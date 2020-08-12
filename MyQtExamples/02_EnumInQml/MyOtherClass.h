#ifndef MYOTHERCLASS_H
#define MYOTHERCLASS_H

#include <QObject>

class MyOtherClass : public QObject
{
    Q_OBJECT
public:
    enum INSIDE_CAP2{
        INSIDE_CAP2_NONE,
        INSIDE_CAP2_01 = 10,
        INSIDE_CAP2_02
    };
    Q_ENUM(INSIDE_CAP2)
    explicit MyOtherClass(QObject *parent = nullptr);

signals:

};

#endif // MYOTHERCLASS_H
