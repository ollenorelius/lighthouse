#include <vector>

class ClientListModel;
class ImageContainerModel;

class SendImageController
{
public:
    SendImageController(ClientListModel* clientListModel,
                        ImageContainerModel* imageContainerModel);

private:
    void sendImage();
    ClientListModel* clientListModel_;
    ImageContainerModel* imageContainerModel_;
    std::vector<unsigned char> createJPEG();

};