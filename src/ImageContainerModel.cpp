#include "ImageContainerModel.h"
#include <opencv2/opencv.hpp>

ImageContainerModel::ImageContainerModel()
{

}

std::shared_ptr<cv::Mat> ImageContainerModel::getImage()
{
    return imageModel_;
}

void ImageContainerModel::setImageModel(std::shared_ptr<cv::Mat> imageModel)
{
    imageModel_ = imageModel;
    imageSet_.emit();
}

Signal* ImageContainerModel::getImageSet()
{
    return &imageSet_;
}

bool ImageContainerModel::hasValidImage()
{
    return !imageModel_.get()->empty();
}