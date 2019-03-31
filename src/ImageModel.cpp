#include "ImageModel.h"

ImageModel::ImageModel(int imageSize) :
    imageSize_(imageSize)
{
    image_ = new unsigned char[imageSize_];
}
ImageModel::~ImageModel()
{
    delete image_;
}
unsigned char* ImageModel::getImagePointer()
{
    return image_;
}