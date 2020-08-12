#ifndef MYTESTCLASS_H
#define MYTESTCLASS_H

#include <QObject>

enum OUTSIDE_CLASS{
    OUTSIDE_NONE,
    OUTSIDE_01,
    OUTSIDE_02
};

class MyTestClass : public QObject
{
    Q_OBJECT

    Q_PROPERTY(INSIDE_CAP inSideEnumCap     READ getInsideEnumCap)
    Q_PROPERTY(OUTSIDE_CLASS outSideEnum    READ getOutSideEnum)
    Q_PROPERTY(inside_NOCAP inSideNoCap     READ getInSideNoCap)
public:
    enum INSIDE_CAP{
        INSIDE_CAP_NONE,
        INSIDE_CAP_01 = 7,
        INSIDE_CAP_02
    };
    Q_ENUM(INSIDE_CAP)


    // TODO: Need to start with capital to able to registerype
    enum inside_NOCAP{
        inside_NOCAP_NONE,
        inside_NOCAP_01 = 4,
        inside_NOCAP_02
    };
    Q_ENUMS(inside_NOCAP)

    explicit MyTestClass(QObject *parent = nullptr);

    INSIDE_CAP inSideEnumCap = INSIDE_CAP_01;
    INSIDE_CAP getInsideEnumCap() const;

    OUTSIDE_CLASS outSideEnum = OUTSIDE_01;
    OUTSIDE_CLASS getOutSideEnum() const;

    inside_NOCAP inSideNoCap = inside_NOCAP_01;
    inside_NOCAP getInSideNoCap() const;
};

#endif // MYTESTCLASS_H
