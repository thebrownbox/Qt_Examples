#ifndef MYTEAMMEMBER_H
#define MYTEAMMEMBER_H

#include <QObject>

class MyTeamMember : public QObject
{
    Q_OBJECT
public:
    explicit MyTeamMember(QObject *parent = nullptr);

signals:

};

#endif // MYTEAMMEMBER_H
