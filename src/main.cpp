#include <iostream>
#include <memory>
#include <chrono>
#include <thread>

#include "ClientListModel.h"
#include "ConnectionReceiver.h"
#include "ClientModel.h"
#include "ImageContainerModel.h"
#include "CameraController.h"
#include "SendImageController.h"


int main(int argc, char* argv[])
{
    auto clientListModel     = std::unique_ptr<ClientListModel>(new ClientListModel());
    auto connectionReceiver  = std::unique_ptr<ConnectionReceiver>(new ConnectionReceiver(clientListModel.get()));
    auto imageContainerModel = std::unique_ptr<ImageContainerModel>(new ImageContainerModel());
    auto cameraController    = std::unique_ptr<CameraController>(new CameraController(imageContainerModel.get()));
    auto sendImageController = std::unique_ptr<SendImageController>(new SendImageController(clientListModel.get(), imageContainerModel.get()));

    using namespace std::chrono_literals;
    std::this_thread::sleep_for(100000h);
    return 0;
}
