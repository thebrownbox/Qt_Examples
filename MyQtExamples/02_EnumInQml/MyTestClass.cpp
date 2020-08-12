#include "MyTestClass.h"
#include <QQmlEngine>

MyTestClass::MyTestClass(QObject *parent) : QObject(parent)
{
//    qmlRegisterType<MyTestClass>("INSIDE_CAP", 1, 0, "INSIDE_CAP");
}

MyTestClass::INSIDE_CAP MyTestClass::getInsideEnumCap() const
{
    return inSideEnumCap;
}

OUTSIDE_CLASS MyTestClass::getOutSideEnum() const
{
    return outSideEnum;
}

MyTestClass::inside_NOCAP MyTestClass::getInSideNoCap() const
{
    return inSideNoCap;
}
