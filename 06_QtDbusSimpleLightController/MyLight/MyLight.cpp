// mylight.cpp

#include "MyLight.h"

MyLight::MyLight(QObject *parent) : QObject(parent)
{
    mIsOn = false;
}

bool MyLight::getIsOn() const
{
    return mIsOn;
}

void MyLight::setIsOn(bool isOn)
{
    if(mIsOn != isOn){
        mIsOn = isOn;
        emit lightChanged();
    }
}

void MyLight::turnOn()
{
    setIsOn(true);
}

void MyLight::turnOff()
{
    setIsOn(false);
}
