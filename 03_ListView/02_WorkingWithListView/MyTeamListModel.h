#ifndef MYTEAMLISTMODEL_H
#define MYTEAMLISTMODEL_H

#include <QObject>
#include <QAbstractListModel>

#include "MyTeamMember.h"

class MyTeamListModel : public QAbstractListModel
{
    Q_OBJECT

public:
    enum TeamListModeRole{
        ROLE_NAME = Qt::UserRole + 1,
        ROLE_AGE,
        ROLE_ROLE
    };
public:
    explicit MyTeamListModel(QObject *parent = nullptr);

    // Must implement methods | Pure virtual methods
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex& modelIndex, int role = Qt::DisplayRole) const override;
    QHash<int,QByteArray> roleNames() const override;

    // User functions
    void add(MyTeamMember* pNewMember);
signals:


private:
    QList<MyTeamMember*> mMembersList;
};

#endif // MYTEAMLISTMODEL_H
