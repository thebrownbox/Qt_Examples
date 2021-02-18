TEMPLATE = app

QT += qml quick widgets dbus

DBUS_INTERFACES += MyLightInterface.xml

CONFIG += c++11

SOURCES += main.cpp \
    MyLightController.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    MyLightController.h

DISTFILES += \
    MyLightInterface.xml
