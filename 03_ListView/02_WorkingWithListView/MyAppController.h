#ifndef MYAPPCONTROLLER_H
#define MYAPPCONTROLLER_H

#include <QObject>
#include "MyTeamListModel.h"

class MyAppController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QObject* myTeamListModel READ getMyTeamListModel NOTIFY notifyTeamListModelChanged)

public:
    explicit MyAppController(QObject *parent = nullptr);


public:
    Q_INVOKABLE void onClickAddNewUser();
    Q_INVOKABLE void onClickAbout();
    Q_INVOKABLE void onClickQuit();





//===========  Test functions ===========
public:
    Q_INVOKABLE void test();

    MyTeamListModel *getMyTeamListModel() const;
    void setMyTeamListModel(MyTeamListModel *value);

signals:
    void notifyTeamListModelChanged();

private:
    MyTeamListModel *initTeamListModel();


private:
    MyTeamListModel *myTeamListModel;
};

#endif // MYAPPCONTROLLER_H
