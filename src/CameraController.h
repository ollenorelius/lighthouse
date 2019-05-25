#include <memory>
class ImageContainerModel;

namespace cv
{
    class VideoCapture;
}

class CameraController
{
public:
    CameraController(ImageContainerModel* imageContainerModel);
    ~CameraController();

private:
    void threadTask();

    ImageContainerModel* imageContainerModel_;
    std::unique_ptr<cv::VideoCapture> camera_;
    bool running_;
    bool threadQuit_;

    const int JPEG_QUALITY = 75;
    const int COLOR_COMPONENTS = 3;

};
