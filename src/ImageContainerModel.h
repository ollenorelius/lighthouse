
#include <memory>
#include "Signal.h"

namespace cv
{
    class Mat;
}

class ImageModel;

class ImageContainerModel
{
public:
    ImageContainerModel();
    std::shared_ptr<cv::Mat> getImage();
    void setImageModel(std::shared_ptr<cv::Mat> imageModel);
    Signal* getImageSet();
private:
    std::shared_ptr<cv::Mat> imageModel_;
    Signal imageSet_;
    
};
