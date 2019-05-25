#include "Signal.h"

Signal::Signal()
{

}
Signal::~Signal()
{

}

void Signal::connect(std::function<void()> callback)
{
    callbackFuncs_.push_back(callback);
}

void Signal::emit()
{
    for (auto callback : callbackFuncs_)
    {
        callback();
    }
}