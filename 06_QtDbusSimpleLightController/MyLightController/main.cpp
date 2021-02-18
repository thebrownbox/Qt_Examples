#include <QApplication>
#include <QQmlContext>
#include <QQmlApplicationEngine>
#include "MyLightController.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    MyLightController controller;
    engine.rootContext()->setContextProperty("controller", &controller);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
