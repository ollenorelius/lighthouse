#include <memory>

class ImageContainerModel;

namespace raspicam
{
    class RaspiCam;
}

class CameraController
{
public:
    CameraController(ImageContainerModel* imageContainerModel);

private:
    void threadTask();

    ImageContainerModel* imageContainerModel_;
    std::unique_ptr<raspicam::RaspiCam> camera_;
    bool running_;
    bool threadQuit_;


    long unsigned int jpegBufferSize_ = 0;

    tjhandle jpegCompressor_;

    const int JPEG_QUALITY = 75;
    const int COLOR_COMPONENTS = 3;
    int width_ = 1920;
    int height_ = 1080;
    long unsigned int jpegSize_ = 0;
    unsigned char* compressedImage_ = NULL; //!< Memory is allocated by tjCompress2 if _jpegSize == 0
    unsigned char buffer_[width_*height_*COLOR_COMPONENTS]; //!< Contains the uncompressed image
};