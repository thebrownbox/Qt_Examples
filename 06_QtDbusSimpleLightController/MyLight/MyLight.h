// mylight.h
#ifndef MYLIGHT_H
#define MYLIGHT_H

#include <QObject>

class MyLight : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool isOn READ getIsOn WRITE setIsOn NOTIFY lightChanged)

public:
    explicit MyLight(QObject *parent = nullptr);

    bool getIsOn() const;
    void setIsOn(bool isOn);

signals:
    void lightChanged();

public slots:
    void turnOn();
    void turnOff();

private:
    bool mIsOn;
};

#endif // MYLIGHT_H
