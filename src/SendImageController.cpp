#include "SendImageController.h"
#include "ClientListModel.h"
#include "ImageContainerModel.h"
#include "ClientModel.h"

#include <sys/socket.h>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>

SendImageController::SendImageController(ClientListModel* clientListModel,
                                         ImageContainerModel* imageContainerModel)
    : clientListModel_(clientListModel),
      imageContainerModel_(imageContainerModel)
{

}

void SendImageController::sendImage()
{
   for (auto client : clientListModel_->getClientList())
   {
       std::vector<uchar> jpegFile = createJPEG();
       send(client->getSocketFileDescriptor(), jpegFile.data(), jpegFile.size(), 0);
   }
}

std::vector<uchar> SendImageController::createJPEG()
{
    std::vector<uchar> jpegFile;
    std::vector<int> params(2);
    
    params[0] = cv::IMWRITE_JPEG_QUALITY;
    params[1] = 80;//default(95) 0-100
    cv::imencode(".jpg", *imageContainerModel_->getImage(), jpegFile, params);


}
