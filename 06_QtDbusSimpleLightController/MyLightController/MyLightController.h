#ifndef MYLIGHTCONTROLLER_H
#define MYLIGHTCONTROLLER_H

#include <QObject>
#include <QDebug>
#include "mylightinterface_interface.h"

class MyLightController : public QObject
{
    Q_OBJECT
public:
    explicit MyLightController(QObject *parent = nullptr);

public slots:
    void turnOn();
    void turnOff();

private:
    //local.qdbuscpp2xml.MyLight
    local::qdbuscpp2xml::MyLight *mRemoteLight;
};


#endif // MYLIGHTCONTROLLER_H
