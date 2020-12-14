#include "MyTeamMember.h"

MyTeamMember::MyTeamMember(QObject *parent) : QObject(parent)
{

}

QString MyTeamMember::getName() const
{
    return mName;
}

void MyTeamMember::setName(const QString &name)
{
    mName = name;
}

MyTeamMember::TEAM_ROLE MyTeamMember::getRole() const
{
    return mRole;
}

void MyTeamMember::setRole(const TEAM_ROLE &role)
{
    mRole = role;
}

int MyTeamMember::getAge() const
{
    return mAge;
}

void MyTeamMember::setAge(int age)
{
    mAge = age;
}
