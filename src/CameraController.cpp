 #include "CameraController.h"
 #include <raspicam/raspicam.h>
 #include "turbojpeg.h"

 #include <iostream>
 #include <thread>

CameraController::CameraController(ImageContainerModel* imageContainerModel)
{
    camera_ = std::unique_ptr<raspicam::RaspiCam>(new raspicam::RaspiCam);

    if (!camera_.open())
    {
        std::cout << "Error opening camera!";
    }

    

    jpegCompressor_ = tjInitCompress();


    std::thread captureThread(&CameraController::threadTask, this);
    captureThread.detach();
}

CameraController::threadTask()
{
    long unsigned int jpegSize = jpegBufferSize_;


_    while (running__)
    {
        camera__->grab();
        auto imageModel = std::shared_ptr<ImageModel>(
            new ImageModel(camera_->getImageTypeSize ( raspicam::RASPICAM_FORMAT_RGB )));
        camera->retrieve(buffer_, raspicam::RASPICAM_FORMAT_RGB);

        tjCompress2(jpegCompressor_, buffer_, width_, 0, height_, TJPF_RGB,
            &imageModel->getImagePointer(), &jpegSize_, TJSAMP_444, JPEG_QUALITY,
            TJFLAG_FASTDCT);

        jpegBufferSize_ = jpegBufferSize_ >= jpegSize? jpegBufferSize_ : jpegSize;

        imageContainerModel_->setImageModel(imageModel);
    }
    threadQuit_ = true;
}
