
class ImageModel
{
public:
    ImageModel(int imageSize);
    ~ImageModel();
    unsigned char* getImagePointer();
private:
    unsigned char* image_;
    int imageSize_;
};