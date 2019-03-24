#include <sys/socket.h>
class ClientModel
{
    ClientModel(int sockfd, const struct sockaddr* addr, socklen_t addrlen);
private:
    int socketFileDescriptor_;
    sockaddr* address_;
    bool connected_ = true;
};