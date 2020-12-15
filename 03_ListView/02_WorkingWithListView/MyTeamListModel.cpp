#include "MyTeamListModel.h"


MyTeamListModel::MyTeamListModel(QObject *parent) : QAbstractListModel(parent)
{

}

int MyTeamListModel::rowCount(const QModelIndex &parent) const
{
    return mMembersList.size();
}


QVariant MyTeamListModel::data(const QModelIndex &index, int role) const
{
    return "nullptr";
}
