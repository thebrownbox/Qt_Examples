#include "AppController.h"

AppController::AppController(QObject *parent) : QObject(parent)
{

}

int AppController::sendImage(int index)
{
    qDebug() << "Send Image: " << index;
    return 0;
}

int AppController::sendText(QString inputText)
{
    qDebug() << "Send Text: " << inputText;
    return 0;
}
