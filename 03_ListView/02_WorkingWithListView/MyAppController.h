#ifndef MYAPPCONTROLLER_H
#define MYAPPCONTROLLER_H

#include <QObject>
#include "MyTeamListModel.h"

class MyAppController : public QObject
{
    Q_OBJECT
public:
    explicit MyAppController(QObject *parent = nullptr);


public:
    Q_INVOKABLE void onClickAddNewUser();
    Q_INVOKABLE void onClickAbout();
    Q_INVOKABLE void onClickQuit();



private:
    MyTeamListModel *myTeamListModel;

//===========  Test functions ===========
public:
    Q_INVOKABLE void test();

signals:

};

#endif // MYAPPCONTROLLER_H
