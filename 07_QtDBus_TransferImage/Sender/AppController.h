#ifndef APPCONTROLLER_H
#define APPCONTROLLER_H

#include <QObject>
#include <QDebug>

class AppController : public QObject
{
    Q_OBJECT
public:
    explicit AppController(QObject *parent = 0);

signals:

public slots:
    int sendImage(int index);
    int sendText(QString inputText);
};

#endif // APPCONTROLLER_H
