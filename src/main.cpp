#include <iostream>
#include <memory>
#include <chrono>
#include <thread>

#include "ClientListModel.h"
#include "ConnectionReceiver.h"
#include "ClientModel.h"


int main(int argc, char* argv[])
{
    auto clientListModel    = std::unique_ptr<ClientListModel>(new ClientListModel());
    auto connectionReceiver = std::unique_ptr<ConnectionReceiver>(new ConnectionReceiver(clientListModel.get()));


    using namespace std::chrono_literals;
    std::cout << "Boop\n";
    std::this_thread::sleep_for(100s);
    return 0;
}