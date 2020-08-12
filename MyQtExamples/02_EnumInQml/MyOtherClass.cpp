#include "MyOtherClass.h"
#include <QQmlEngine>

MyOtherClass::MyOtherClass(QObject *parent) : QObject(parent)
{
    qmlRegisterType<MyOtherClass>("INSIDE_CAP2_IMPORT", 1, 0, "INSIDE_CAP2");
}
