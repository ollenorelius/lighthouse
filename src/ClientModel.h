
class ClientModel
{
public:
    ClientModel(int socketFileDescriptor);

    bool getIsConnected();
private:
    int socketFileDescriptor_;

    int requestedImages_;
    bool connected_ = true;
};