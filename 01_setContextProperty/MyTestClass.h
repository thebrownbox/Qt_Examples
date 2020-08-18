#ifndef MYTESTCLASS_H
#define MYTESTCLASS_H

#include <QObject>

class MyTestClass : public QObject
{
    Q_OBJECT
public:
    explicit MyTestClass(QObject *parent = nullptr);
//public slots | or Q_INVOKABLE
Q_INVOKABLE
    QString myName();
signals:

};

#endif // MYTESTCLASS_H
