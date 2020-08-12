#include "MyOtherClass.h"
#include "MyTestClass.h"

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    MyTestClass theObjectInCpp;
    engine.rootContext()->setContextProperty("theSameObjectInCpp", &theObjectInCpp);

    qmlRegisterType<MyTestClass>("INSIDE_CAP_IMPORT", 1, 0, "INSIDE_CAP");

//    qmlRegisterType<MyTestClass>("INSIDE_NOCAP_IMPORT", 1, 0, "inside_NOCAP");

    MyOtherClass c; // To register type

    engine.load(url);

    return app.exec();
}
