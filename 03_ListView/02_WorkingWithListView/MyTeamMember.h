#ifndef MYTEAMMEMBER_H
#define MYTEAMMEMBER_H

#include <QObject>

class MyTeamMember : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString  mName       READ getName)
    Q_PROPERTY(int      mAge        READ getAge)
    Q_PROPERTY(int      mRole       READ getRole)

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

    QString getName() const;
    void setName(const QString &name);

    TEAM_ROLE getRole() const;
    void setRole(const TEAM_ROLE &role);

    int getAge() const;
    void setAge(int age);

signals:
    void notifyPropertyChanged();


private:
    QString mName;
    int mAge;
    TEAM_ROLE mRole;
};

#endif // MYTEAMMEMBER_H
