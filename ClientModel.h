
class ClientModel
{
public:
    ClientModel(int socketFileDescriptor);

    bool getIsConnected();
private:
    int socketFileDescriptor_;
    
    bool connected_ = true;
};