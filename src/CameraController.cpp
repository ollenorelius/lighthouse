#include "CameraController.h"
#include "ImageModel.h"
#include "ImageContainerModel.h"
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>

#include <chrono>
#include <iostream>
#include <thread>

CameraController::CameraController(ImageContainerModel* imageContainerModel) :
    threadQuit_(false),
    running_(false),
    imageContainerModel_(imageContainerModel)
{
    camera_ = std::unique_ptr<cv::VideoCapture>(new cv::VideoCapture(0));
    if (!camera_->isOpened())
    {
        std::cout << "Error opening camera!\n";
    }
    else
    {
        std::cout << "Opened camera successfully!\n";
    }
    

    //cv::namedWindow("Test window", cv::WINDOW_AUTOSIZE);



    std::thread captureThread(&CameraController::threadTask, this);
    captureThread.detach();
}

CameraController::~CameraController()
{
}

void CameraController::threadTask()
{
    running_ = true;

	cv::Mat* frame;
    while (running_)
    {

#if 1
	    frame = new cv::Mat();
	    *camera_.get() >> *frame;
#else
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
	    frame = new cv::Mat(cv::imread("res/test_image.jpg"));
#endif
        
        std::shared_ptr<cv::Mat> imageModel = std::shared_ptr<cv::Mat>(frame);
        imageContainerModel_->setImageModel(imageModel);
    }
    threadQuit_ = true;
}
