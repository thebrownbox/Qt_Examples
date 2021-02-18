TEMPLATE = app

QT += qml quick dbus
CONFIG += c++11

SOURCES += main.cpp \
    AppController.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    AppController.h
