
class ClientModel
{
public:
    ClientModel(int socketFileDescriptor);

    bool getIsConnected();
    int getSocketFileDescriptor();
    void setIsConnected(bool status);
private:
    int socketFileDescriptor_;

    int requestedImages_;
    bool connected_ = true;
};