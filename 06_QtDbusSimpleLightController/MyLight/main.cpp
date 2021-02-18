#include <QApplication>
#include <QQmlContext>
#include <QQmlApplicationEngine>
#include "MyLight.h"
#include "mylightinterface_adaptor.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // Create new instance
    MyLight myLight;

    new MyLightAdaptor(&myLight);

    // Connect to session bus
    QDBusConnection connection = QDBusConnection::sessionBus();
    connection.registerObject("/light", &myLight);
    connection.registerService("local.qdbuscpp2xml.MyLight");

    myLight.turnOff();
    engine.rootContext()->setContextProperty("myLight", &myLight);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
