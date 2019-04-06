#include "CameraController.h"
#include <raspicam/raspicam.h>
#include <turbojpeg.h>
#include "ImageModel.h"
#include "ImageContainerModel.h"

#include <chrono>
#include <iostream>
#include <thread>

CameraController::CameraController(ImageContainerModel* imageContainerModel) :
    threadQuit_(false),
    running_(false),
    imageContainerModel_(imageContainerModel)
{
    camera_ = std::unique_ptr<raspicam::RaspiCam>(new raspicam::RaspiCam);
    buffer_ = new unsigned char[height_ * width_ * 3];
    if (!camera_->open())
    {
        std::cout << "Error opening camera!";
    }

    

    jpegCompressor_ = new tjhandle(tjInitCompress());


    std::thread captureThread(&CameraController::threadTask, this);
    captureThread.detach();
}

CameraController::~CameraController()
{
    delete buffer_;
}

void CameraController::threadTask()
{
    long unsigned int jpegSize = jpegBufferSize_;
    running_ = true;

    while (running_)
    {
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
#if 0
        camera_->grab();
        camera_->retrieve(buffer_, raspicam::RASPICAM_FORMAT_RGB);
#else
        DEBUGFillBuffer(buffer_);
#endif
        std::shared_ptr<ImageModel> imageModel;
        if (camera_.get())
        {
        imageModel = std::shared_ptr<ImageModel>(
            new ImageModel(camera_->getImageTypeSize ( raspicam::RASPICAM_FORMAT_RGB )));
        }
        else
        {
            imageModel = std::shared_ptr<ImageModel>(
            new ImageModel(height_*width_*3+1));
        }
        unsigned char* ptr = imageModel->getImagePointer();
        /*tjCompress2(jpegCompressor_, buffer_, width_, 0, height_, TJPF_RGB,
            &ptr, &jpegSize_, TJSAMP_444, JPEG_QUALITY,
            TJFLAG_FASTDCT);*/

        jpegBufferSize_ = jpegBufferSize_ >= jpegSize? jpegBufferSize_ : jpegSize;

        imageContainerModel_->setImageModel(imageModel);
    }
    threadQuit_ = true;
}

void CameraController::DEBUGFillBuffer(unsigned char* buffer)
{
    DEBUGIterations++;
    if (DEBUGIterations == 255)
    {
        DEBUGIterations = 0;
    }
    for(int x = 0; x < width_; x++)
    {
        for(int y = 0; y < height_; y++)
        {
            buffer[x*height_*3 + y*3] = x/width_ * DEBUGIterations;
            buffer[x*height_*3 + y*3 + 1] = y / height_ * DEBUGIterations;
            buffer[x*height_*3 + y*3 + 2] = DEBUGIterations;
        }
    }
}