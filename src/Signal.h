#include <vector>
#include <functional>

class Signal
{
public:
    Signal();
    ~Signal();
    void connect(std::function<void()> callback);
    void emit();
private:
    std::vector<std::function<void(void)>> callbackFuncs_;
};