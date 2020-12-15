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

    // Must implement methods | Pure virtual methods
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex& index, int role = Qt::DisplayRole) const override;

signals:


private:
    QList<MyTeamMember*> mMembersList;
};

#endif // MYTEAMLISTMODEL_H
