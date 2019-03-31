
#include <memory>

class ImageModel;

class ImageContainerModel
{
public:
    ImageContainerModel();
    std::shared_ptr<ImageModel> getImage();
    void setImageModel(std::shared_ptr<ImageModel> imageModel);

private:
    std::shared_ptr<ImageModel> imageModel_;
    
};