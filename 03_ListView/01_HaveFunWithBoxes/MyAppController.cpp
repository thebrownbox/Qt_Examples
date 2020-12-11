#include <QQmlComponent>
#include "MyAppController.h"
#include <QDebug>
#include <QQuickItem>



MyAppController::MyAppController(QQmlApplicationEngine *engine) : QObject(engine)
{
//    qmlRegisterType<MyAppController>("MY_SHAPE_TYPE_E", 1, 0, "MY_SHAPE_TYPE_E");
//    qmlRegisterType<MyAppController>("MY_SHAPE_TYPE_E_IMPORT", 1, 0, "MY_SHAPE_TYPE_E");
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

QQuickItem *MyAppController::createShape(MyAppController::MY_SHAPE_TYPE_E type, int index, QVariant color)
{
    QQmlComponent *pNewComponent = nullptr;

    switch (type) {
        case MY_SHAPE_CIRCLE:
            pNewComponent = new QQmlComponent(getEngine(), QUrl("qrc:/MyCircle.qml"));
        break;
        case MY_SHAPE_TRIANGLE:
            pNewComponent = new QQmlComponent(getEngine(), QUrl("qrc:/MyTriangle.qml"));
        break;
        default:
            pNewComponent = new QQmlComponent(getEngine(), QUrl("qrc:/MyBox.qml"));
        break;
    }

    QQuickItem *newItem = qobject_cast<QQuickItem*>(pNewComponent->create(getEngine()->rootContext()));
//    QQmlEngine::setObjectOwnership(newItem, QQmlEngine::CppOwnership);

    newItem->setProperty("myIndex", index);
    newItem->setProperty("myColor", color);

    delete pNewComponent;
    return newItem;
}


void MyAppController::test()
{
    createBoxForTest();
    turnSampleBoxToGray();
}



void MyAppController::addShapeByCpp(QQuickItem* gridView, int shapeType, int index, QVariant color)
{
    qDebug() << "This is: addShapeByCpp";
    auto newItem = createShape((MyAppController::MY_SHAPE_TYPE_E)shapeType, index, color);
    newItem->setParentItem(gridView);
    newItem->setParent(gridView);
    qDebug() << "gridView->children().count(): " << gridView->children().count();
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
