#include "MyAppController.h"
#include "QDebug"
#include <QCoreApplication>
#include <QWindow>
#include <QQmlComponent>
#include <QQmlEngine>
#include <QQuickWindow>

MyAppController::MyAppController(QObject *parent) : QObject(parent)
{

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

void MyAppController::test()
{
    qDebug() << "This: test";
}
