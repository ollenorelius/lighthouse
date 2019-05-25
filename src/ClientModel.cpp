#include "ClientModel.h"
#include <memory>

ClientModel::ClientModel(int socketFileDescriptor) :
    socketFileDescriptor_(socketFileDescriptor)
{

}

bool ClientModel::getIsConnected()
{
    return connected_;
}

int ClientModel::getSocketFileDescriptor()
{
    return socketFileDescriptor_;
}