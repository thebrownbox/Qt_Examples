#include "MyAppController.h"
#include "QDebug"
#include "QCoreApplication"

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
