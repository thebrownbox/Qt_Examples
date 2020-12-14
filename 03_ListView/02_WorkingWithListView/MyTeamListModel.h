#ifndef MYTEAMLISTMODEL_H
#define MYTEAMLISTMODEL_H

#include <QObject>
#include <QAbstractListModel>

#include "MyTeamMember.h"

class MyTeamListModel : public QAbstractListModel
{
    Q_OBJECT
public:
    explicit MyTeamListModel(QObject *parent = nullptr);

signals:


private:
    QList<MyTeamMember*> mMembersList;
};

#endif // MYTEAMLISTMODEL_H
