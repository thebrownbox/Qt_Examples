#include "MyTeamListModel.h"


MyTeamListModel::MyTeamListModel(QObject *parent) : QAbstractListModel(parent)
{

}

int MyTeamListModel::rowCount(const QModelIndex &parent) const
{
    return mMembersList.size();
}

// From role (int number that have converted from "string" property in QML file
// Refer to real data for display
QVariant MyTeamListModel::data(const QModelIndex &modelIndex, int role) const
{
    int index = modelIndex.row();
    if(index < 0 || index >= mMembersList.size())
        return QVariant();
    auto curMember = mMembersList.at(index);
    switch (role) {
    case ROLE_AGE: return curMember->getAge();
    case ROLE_NAME: return curMember->getName();
    case ROLE_ROLE: return curMember->getRole();
    }

    return QVariant();
}

/**
  Using to mapping text to int => For quickly refer from "string" property in QML
to the attribute of member
 */
QHash<int, QByteArray> MyTeamListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[ROLE_NAME] = "mName";
    roles[ROLE_AGE] = "mAge";
    roles[ROLE_ROLE] = "mRole";
    return roles;
}

void MyTeamListModel::add(MyTeamMember *pNewMember)
{
    mMembersList.append(pNewMember);
}
