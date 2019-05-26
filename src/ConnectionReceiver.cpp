#include "ConnectionReceiver.h"
#include "ClientModel.h"
#include "ClientListModel.h"
#include <memory>

#include <string.h>
#include <thread>


ConnectionReceiver::ConnectionReceiver(ClientListModel* clientListModel) :
    clientListModel_(clientListModel),
    running_(true),
    threadQuit_(false)
{
    addressLength_ = sizeof(address_);
    setupReceiver();

    std::thread listenerThread(&ConnectionReceiver::threadTask, this);
    listenerThread.detach();

}

void ConnectionReceiver::setupReceiver()
{
    // Creating socket file descriptor 
    if ((serverFileDescriptor_ = socket(AF_INET, SOCK_STREAM, 0)) == 0) 
    { 
        perror("socket failed"); 
        exit(EXIT_FAILURE); 
    } 
       
    // Forcefully attaching socket to the port 8080 
    if (setsockopt(serverFileDescriptor_, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, 
                                                  &option_, sizeof(option_))) 
    { 
        perror("setsockopt"); 
        exit(EXIT_FAILURE); 
    } 
    address_.sin_family = AF_INET; 
    address_.sin_addr.s_addr = INADDR_ANY; 
    address_.sin_port = htons( port_ ); 
       
    // Forcefully attaching socket to the port 8080 
    if (bind(serverFileDescriptor_, (struct sockaddr *)&address_,  
                                 sizeof(address_
                        ))<0) 
    { 
        perror("bind failed"); 
        exit(EXIT_FAILURE); 
    } 
    if (listen(serverFileDescriptor_, 3) < 0) 
    { 
        perror("listen"); 
        exit(EXIT_FAILURE); 
    }
}

void ConnectionReceiver::receiveConnection()
{
    int newSocket;
    if ((newSocket = accept(serverFileDescriptor_, (struct sockaddr *)&address_,  
                        (socklen_t*)&addressLength_))<0) 
    { 
        perror("accept"); 
        exit(EXIT_FAILURE); 
    }
    clientListModel_->addClientModel(std::move(std::unique_ptr<ClientModel>(new ClientModel(newSocket))));


    char buffer[1024] = {0}; 
    char *hello = "Hello from server"; 
    int valread;
     valread = read( newSocket , buffer, 1024); 
     printf("number of clients in list: %d\n", clientListModel_->getClientList().size()); 
}

void ConnectionReceiver::threadTask()
{
    while (running_)
    {
        receiveConnection();
    }
    threadQuit_ = true;
}