#include "MyAppController.h"
#include "QDebug"
#include <QCoreApplication>
#include <QWindow>
#include <QQmlComponent>
#include <QQmlEngine>
#include <QQuickWindow>

MyAppController::MyAppController(QObject *parent) : QObject(parent)
{
    auto newList = initTeamListModel();
    setMyTeamListModel(newList);
}

void MyAppController::onClickAddNewUser()
{
    qDebug() << "This: onClickAddNewUser";
}

void MyAppController::onClickAbout()
{
    qDebug() << "This: onClickAbout";
    QQmlComponent component((QQmlEngine*)parent(),"qrc:/AboutPage.qml");
    QQuickWindow* pNewWindow = qobject_cast<QQuickWindow*> (component.create(((QQmlEngine*)parent())->rootContext()));
    pNewWindow->show();
}

void MyAppController::onClickQuit()
{
    qDebug() << "This: onClickQuit";
    QCoreApplication::exit();
}

MyTeamListModel *MyAppController::getMyTeamListModel() const
{
    return myTeamListModel;
}

void MyAppController::setMyTeamListModel(MyTeamListModel *value)
{
    myTeamListModel = value;
    emit notifyTeamListModelChanged();
}

MyTeamListModel *MyAppController::initTeamListModel()
{
    MyTeamListModel* newModel = new MyTeamListModel(this);
    for (int i = 0; i < 4; i++) {
        auto pNewMember = new MyTeamMember(this);
        pNewMember->setAge(i);
        pNewMember->setName(QString("Hello"));
        newModel->add(pNewMember);
    }
    return newModel;
}

void MyAppController::test()
{
    qDebug() << "This: test";
}
