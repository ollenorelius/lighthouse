#include <memory>
#include "../lib/libjpeg-turbo-master/turbojpeg.h"
class ImageContainerModel;
//class tjhandle;

namespace raspicam
{
    class RaspiCam;
}

class CameraController
{
public:
    CameraController(ImageContainerModel* imageContainerModel);
    ~CameraController();

private:
    void threadTask();
    void DEBUGFillBuffer(unsigned char* buffer);

    ImageContainerModel* imageContainerModel_;
    std::unique_ptr<raspicam::RaspiCam> camera_;
    bool running_;
    bool threadQuit_;


    long unsigned int jpegBufferSize_ = 100000;

    tjhandle* jpegCompressor_;

    const int JPEG_QUALITY = 75;
    const int COLOR_COMPONENTS = 3;
    int width_ = 192;
    int height_ = 108;
    long unsigned int jpegSize_ = 0;
    unsigned char* compressedImage_ = NULL; //!< Memory is allocated by tjCompress2 if _jpegSize == 0
    unsigned char* buffer_; //!< Contains the uncompressed image, TODO: should probably be a smart pointer

    int DEBUGIterations = 0;
};
