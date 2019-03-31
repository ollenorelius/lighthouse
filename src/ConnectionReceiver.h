#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <netinet/in.h> 

class ClientListModel;

class ConnectionReceiver
{
public:
    ConnectionReceiver(ClientListModel* clientListModel);

private:
    void setupReceiver();
    void receiveConnection();
    void threadTask();


    ClientListModel* clientListModel_;
    int serverFileDescriptor_;
    struct sockaddr_in address_; 
    int addressLength_; 
    int option_ = 1;


    int port_ = 8080;
    bool running_;
    bool threadQuit_;
};