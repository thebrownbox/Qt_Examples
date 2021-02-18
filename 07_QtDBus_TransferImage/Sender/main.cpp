#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtDBus>
#include <QDebug>

#include "AppController.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);



    //qDebug() << QDBusConnection::sessionBus().isConnected();

    QQmlApplicationEngine engine;

    AppController mController(&engine);
    engine.rootContext()->setContextProperty("mController", &mController);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
