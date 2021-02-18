#include "MyLightController.h"



MyLightController::MyLightController(QObject *parent) : QObject(parent)
{
    mRemoteLight = new local::qdbuscpp2xml::MyLight("local.qdbuscpp2xml.MyLight", "/light",
                                        QDBusConnection::sessionBus(), this);
}

void MyLightController::turnOn()
{
    qDebug() << "turn on";
    mRemoteLight->turnOn();
}

void MyLightController::turnOff()
{
    qDebug() << "turn off";
    mRemoteLight->turnOff();
}
