#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "MyAppController.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine(QUrl(QStringLiteral("qrc:/main.qml")));
    // 1. Create the controller
    MyAppController myAppController(&engine);

    engine.rootContext()->setContextProperty("myAppController", &myAppController);

    return app.exec();
}
