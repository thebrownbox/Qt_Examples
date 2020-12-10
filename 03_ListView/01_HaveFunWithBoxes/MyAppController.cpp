#include <QQmlComponent>
#include "MyAppController.h"
#include <QDebug>
#include <QQuickItem>



MyAppController::MyAppController(QQmlApplicationEngine *engine) : QObject(engine)
{
    this->mEngine = engine;
}



QObject *MyAppController::getRootObject()
{
    if(getEngine() != nullptr)
    {
        return getEngine()->rootObjects().at(0);
    }
    return nullptr;
}

QQuickWindow *MyAppController::getMainWindow()
{
    QObject* rootObject = getRootObject();
    if(rootObject == nullptr)
        return nullptr;
    return qobject_cast<QQuickWindow*>(rootObject);
}

QQuickItem *MyAppController::createBox()
{
    QQmlComponent newComponent(getEngine(), QUrl("qrc:/MyBox.qml"));
    QQuickItem *newItem = qobject_cast<QQuickItem*>(newComponent.create(getEngine()->rootContext()));
    QQmlEngine::setObjectOwnership(newItem, QQmlEngine::CppOwnership);

    return newItem;
}


void MyAppController::test()
{
    createBoxForTest();
    turnSampleBoxToGray();
}

void MyAppController::clickGenerateBox(QQuickItem *sampleBox)
{
    qDebug() << "This is: clickGenerateBox: " << sampleBox->objectName();
}

void MyAppController::addBoxByCpp(QObject *gridView)
{
    qDebug() << "This is: addBoxByCpp";
    auto newItem = createBox();
    newItem->setParentItem((qobject_cast<QQuickItem*> (gridView)));
    newItem->setParent(gridView);
    qDebug() << gridView->children().count();
}



void MyAppController::createBoxForTest()
{
    qDebug() << "This is: createBoxForTest";
    qDebug() << "Start: " << getRootObject()->children().count();

    QQmlComponent newComponent(getEngine(), QUrl("qrc:/MyBox.qml"));
    QQuickItem *newItem = qobject_cast<QQuickItem*>(newComponent.create(getEngine()->rootContext()));

    QQmlEngine::setObjectOwnership(newItem, QQmlEngine::CppOwnership);

    newItem->setParentItem(getMainWindow()->contentItem());
    newItem->setParent(getMainWindow());

    qDebug() << "End: " << getRootObject()->children().count();
}

void MyAppController::turnSampleBoxToGray()
{
    qDebug() << "This is: turnSampleBoxToGray";
    QObject* sampleBox =  getRootObject()->findChild<QObject*>("mySampleBox");
    if(sampleBox != nullptr){
        sampleBox->setProperty("x", 0);
    }else{
        qDebug() << "Error: sampleBox is null";
    }
}
