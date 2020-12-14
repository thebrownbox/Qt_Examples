#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "MyAppController.h"
#include "MyTeamMember.h"

int main(int argc, char *argv[])
{
//    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    qmlRegisterType<MyTeamMember>("TEAM_ROLE_IMPORT", 1, 0, "TEAM_ROLE");

    QQmlApplicationEngine engine(QUrl(QStringLiteral("qrc:/main.qml")));

    MyAppController myAppController(&engine);
    engine.rootContext()->setContextProperty("myAppController", &myAppController);

    return app.exec();
}
