#ifndef MYAPPCONTROLLER_H
#define MYAPPCONTROLLER_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>

class MyAppController : public QObject
{
    Q_OBJECT
public:
    explicit MyAppController(QQmlApplicationEngine *engine);

signals:


public:
    Q_INVOKABLE void test();
    Q_INVOKABLE void clickGenerateBox(QQuickItem* sampleBox);
    Q_INVOKABLE void addBoxByCpp(QObject* gridView);


public:
    QQmlApplicationEngine* getEngine() { return mEngine; }
    QObject* getRootObject();
    QQuickWindow* getMainWindow();

private:
    QQmlApplicationEngine* mEngine;
    QQuickItem* createBox();

//============== Test function
private:
    void createBoxForTest();
    void turnSampleBoxToGray();
};

#endif // MYAPPCONTROLLER_H
