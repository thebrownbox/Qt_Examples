#ifndef APPCONTROLLER_H
#define APPCONTROLLER_H

#include <QObject>
#include <QDebug>

class AppController : public QObject
{
    Q_OBJECT
public:
    static const QString DBUS_SERVICE_NAME;
    static const QString DBUS_TEXT_ARG_NAME;
    static const QString DBUS_OBJ_PATH;

    explicit AppController(QObject *parent = 0);

signals:

public slots:
    int sendImage(int index);
    int sendText(QString inputText);
};

#endif // APPCONTROLLER_H
