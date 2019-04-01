 #include "CameraController.h"
 #include <raspicam/raspicam.h>
 #include <turbojpeg.h>
 #include "ImageModel.h"
 #include "ImageContainerModel.h"
 

 #include <iostream>
 #include <thread>

CameraController::CameraController(ImageContainerModel* imageContainerModel)
{
    camera_ = std::unique_ptr<raspicam::RaspiCam>(new raspicam::RaspiCam);

    if (!camera_->open())
    {
        std::cout << "Error opening camera!";
    }

    

    jpegCompressor_ = new tjhandle(tjInitCompress());


    std::thread captureThread(&CameraController::threadTask, this);
    captureThread.detach();
}

void CameraController::threadTask()
{
    long unsigned int jpegSize = jpegBufferSize_;


    while (running_)
    {
        camera_->grab();
        auto imageModel = std::shared_ptr<ImageModel>(
            new ImageModel(camera_->getImageTypeSize ( raspicam::RASPICAM_FORMAT_RGB )));
        camera_->retrieve(buffer_, raspicam::RASPICAM_FORMAT_RGB);
        unsigned char* ptr = imageModel->getImagePointer();
        tjCompress2(jpegCompressor_, buffer_, width_, 0, height_, TJPF_RGB,
            &ptr, &jpegSize_, TJSAMP_444, JPEG_QUALITY,
            TJFLAG_FASTDCT);

        jpegBufferSize_ = jpegBufferSize_ >= jpegSize? jpegBufferSize_ : jpegSize;

        imageContainerModel_->setImageModel(imageModel);
    }
    threadQuit_ = true;
}
