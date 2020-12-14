#include "MyTeamMember.h"

MyTeamMember::MyTeamMember(QObject *parent) : QObject(parent)
{

}

QString MyTeamMember::name() const
{
    return mName;
}

void MyTeamMember::setName(const QString &name)
{
    mName = name;
}
