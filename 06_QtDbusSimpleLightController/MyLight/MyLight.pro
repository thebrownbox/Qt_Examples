TEMPLATE = app

QT += qml quick widgets dbus

DBUS_ADAPTORS += MyLightInterface.xml

CONFIG += c++11

SOURCES += main.cpp \
    MyLight.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    MyLight.h

DISTFILES +=
