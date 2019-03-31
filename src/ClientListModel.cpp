#include "ClientListModel.h"
#include "ClientModel.h"
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
    for (auto it = clientModels_.end(); it != clientModels_.begin(); it--)
    {
        if (!it->get()->getIsConnected())
        {
            clientModels_.erase(it);
        }
    }
}