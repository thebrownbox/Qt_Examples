#ifndef MYAPPCONTROLLER_H
#define MYAPPCONTROLLER_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>

class MyAppController : public QObject
{
    Q_OBJECT
    Q_ENUMS(MY_SHAPE_TYPE_E)

public:
    enum MY_SHAPE_TYPE_E
    {
        MY_SHAPE_BOX,
        MY_SHAPE_CIRCLE,
        MY_SHAPE_TRIANGLE,
        MY_SHAPE_MAX
    };
public:
    explicit MyAppController(QQmlApplicationEngine *engine = nullptr);

signals:


public:
    Q_INVOKABLE void test();
    Q_INVOKABLE void addShapeByCpp(QQuickItem* gridView, int shapeType, int index, QVariant color);

public:
    QQmlApplicationEngine* getEngine() { return mEngine; }
    QObject* getRootObject();
    QQuickWindow* getMainWindow();

private:
    QQmlApplicationEngine* mEngine;
    QQuickItem* createBox();
    QQuickItem* createShape(MY_SHAPE_TYPE_E type, int index, QVariant color);

//============== Test function ============
private:
    void createBoxForTest();
    void turnSampleBoxToGray();
};

#endif // MYAPPCONTROLLER_H
