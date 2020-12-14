#ifndef MYTEAMMEMBER_H
#define MYTEAMMEMBER_H

#include <QObject>

class MyTeamMember : public QObject
{
    Q_OBJECT

/*New data type!*/
public:
    enum TEAM_ROLE{
        ROLE_TESTER,
        ROLE_DEVLOPER,
        ROLE_BA,
        ROLE_QA,
        ROLE_TEAM_LEADER,
        ROLE_MAX
    };
    Q_ENUM(TEAM_ROLE)


public:
    explicit MyTeamMember(QObject *parent = nullptr);

    QString name() const;
    void setName(const QString &name);

signals:



private:
    QString mName;
    int mAge;

};

#endif // MYTEAMMEMBER_H
