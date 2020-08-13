#ifndef CLASSFORQML_H
#define CLASSFORQML_H

#include <QObject>

class ClassForQml : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int index READ getIndex WRITE setIndex NOTIFY notifyIndexChaged)

public:
    explicit ClassForQml(QObject *parent = nullptr);

    int index;
    int getIndex() const;
    void setIndex(int value);

signals:
    void notifyIndexChaged();
};

#endif // CLASSFORQML_H
