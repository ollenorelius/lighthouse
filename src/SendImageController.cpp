#include "SendImageController.h"
#include "ClientListModel.h"
#include "ImageContainerModel.h"
#include "ClientModel.h"

#include <iostream>
#include <csignal>
#include <sys/socket.h>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>

SendImageController::SendImageController(ClientListModel* clientListModel,
                                         ImageContainerModel* imageContainerModel)
    : clientListModel_(clientListModel),
      imageContainerModel_(imageContainerModel)
{
    imageContainerModel_->getImageSet()->connect([this](){this->sendImage();});
    signal(SIGPIPE, SIG_IGN);
}

void SendImageController::sendImage()
{
    if (clientListModel_->getClientList().size() == 0) return;
    if (!imageContainerModel_->hasValidImage()) return;

    std::vector<uchar> jpegFile = retrieveImageAndCreateJPEG();
    int sizeOfPic = jpegFile.size();
    for (auto client : clientListModel_->getClientList())
    {
        int result = send(client->getSocketFileDescriptor(), &sizeOfPic, sizeof(sizeOfPic), 0);
        if (result == -1)
        {
           client->setIsConnected(false);
           continue;
        }
        send(client->getSocketFileDescriptor(), jpegFile.data(), jpegFile.size(), 0);
    }
    clientListModel_->clearDisconnectedClients();
}

std::vector<uchar> SendImageController::retrieveImageAndCreateJPEG()
{
    std::vector<uchar> jpegFile;
    std::vector<int> params(2);
    
    params[0] = cv::IMWRITE_JPEG_QUALITY;
    params[1] = 30;//default(95) 0-100
    cv::imencode(".jpg", *imageContainerModel_->getImage(), jpegFile, params);

    return jpegFile;
}
