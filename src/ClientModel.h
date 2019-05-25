
class ClientModel
{
public:
    ClientModel(int socketFileDescriptor);

    bool getIsConnected();
    int getSocketFileDescriptor();
private:
    int socketFileDescriptor_;

    int requestedImages_;
    bool connected_ = true;
};