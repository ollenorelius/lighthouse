#include "ImageContainerModel.h"
#include "ImageModel.h"
ImageContainerModel::ImageContainerModel()
{

}

std::shared_ptr<ImageModel> ImageContainerModel::getImage()
{
    return imageModel_;
}

void ImageContainerModel::setImageModel(std::shared_ptr<ImageModel> imageModel)
{
    imageModel_ = imageModel;
}