#include "AppController.h"
#include <QDBusMessage>
#include <QDBusConnection>

const QString AppController::DBUS_SERVICE_NAME = "havn.dbus.transfer";
const QString AppController::DBUS_TEXT_ARG_NAME = "textMessage";
const QString AppController::DBUS_OBJ_PATH = "/";

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

    QDBusMessage msg = QDBusMessage::createSignal(DBUS_OBJ_PATH, DBUS_SERVICE_NAME, DBUS_TEXT_ARG_NAME);
    msg << inputText;
    QDBusConnection::sessionBus().send(msg);

    return 0;
}
