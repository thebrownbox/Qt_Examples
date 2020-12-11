#ifndef MYAPPCONTROLLER_H
#define MYAPPCONTROLLER_H

#include <QObject>

class MyAppController : public QObject
{
    Q_OBJECT
public:
    explicit MyAppController(QObject *parent = nullptr);

signals:

};

#endif // MYAPPCONTROLLER_H
