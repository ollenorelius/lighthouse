#include <vector>
#include <memory>

class ClientModel;
class ClientListModel
{
    ClientListModel();
    void addClientModel(std::unique_ptr<ClientModel> clientModel);
    std::vector<ClientModel*> getClientList();
    void clearDisconnectedClients();
private:
    std::vector<std::unique_ptr<ClientModel>> clientModels_;
};