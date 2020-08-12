#include "MyTestClass.h"

MyTestClass::MyTestClass(QObject *parent) : QObject(parent)
{

}

QString MyTestClass::myName()
{
    return "123";
}
