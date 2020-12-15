#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "MyAppController.h"
#include "MyTeamMember.h"

int main(int argc, char *argv[])
{
//    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    MyAppController myAppController(&app);

    qmlRegisterType<MyTeamMember>("TEAM_ROLE_IMPORT", 1, 0, "TEAM_ROLE");

    QQmlApplicationEngine engine(&app);


    engine.rootContext()->setContextProperty("myAppController", &myAppController);

    engine.load("qrc:/main.qml");

    return app.exec();
}
