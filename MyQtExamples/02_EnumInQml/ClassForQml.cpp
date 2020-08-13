#include "ClassForQml.h"

ClassForQml::ClassForQml(QObject *parent) : QObject(parent)
{ }

int ClassForQml::getIndex() const
{
    return index;
}

void ClassForQml::setIndex(int value)
{
    index = value;
    emit notifyIndexChaged();
}
