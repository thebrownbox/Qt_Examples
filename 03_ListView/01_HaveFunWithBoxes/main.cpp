#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "MyAppController.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    qmlRegisterType<MyAppController>("MY_SHAPE_TYPE_E_IMPORT", 1, 0, "MY_SHAPE_TYPE_E");

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine(QUrl(QStringLiteral("qrc:/main.qml")));

    MyAppController myAppController(&engine);

    engine.rootContext()->setContextProperty("myAppController", &myAppController);

    return app.exec();
}
