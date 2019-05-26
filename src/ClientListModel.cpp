#include "ClientListModel.h"
#include "ClientModel.h"
#include <algorithm>
ClientListModel::ClientListModel()
{

}

void ClientListModel::addClientModel(std::unique_ptr<ClientModel> clientModel)
{
    clientModels_.push_back(std::move(clientModel));
}

std::vector<ClientModel*> ClientListModel::getClientList()
{
    auto clientList = std::vector<ClientModel*>();
    for (int i = 0; i < clientModels_.size(); i++)
    {
        auto clientPtr = clientModels_.at(i).get();
        clientList.push_back(clientPtr);
    }
    return clientList;
}

void ClientListModel::clearDisconnectedClients()
{
    clientModels_.erase(
        std::remove_if(
            clientModels_.begin(),
            clientModels_.end(),
            [&](std::unique_ptr<ClientModel>& c){return !(c.get()->getIsConnected());}), 
        clientModels_.end());
}