


// combobox
https://doc.qt.io/qt-5/qtquickcontrols2-customize.html


2. ListView

Step 1:
- extends "QAbstractListModel"
- Create constructor with its constructor

Step 2: implement 2 methods:
- rowCount
- data

Step 3: Mapping QML property with real property of model

3.1 Create enum to easy to refer
enum TeamListModeRole{
    ROLE_NAME = Qt::UserRole + 1,
	ROLE_AGE,
	ROLE_ROLE
};

3.2 Override function:
QHash<int,QByteArray> roleNames() const override;

QHash<int, QByteArray> MyTeamListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
	roles[ROLE_NAME] = "mName";
	roles[ROLE_AGE] = "mAge";
	roles[ROLE_ROLE] = "mRole";
	return roles;
}


3.3 Return real value with role value have setting above
QVariant MyTeamListModel::data(const QModelIndex &modelIndex, int role) const
{
    int index = modelIndex.row();
	if(index < 0 || index >= mMembersList.size())
	    return QVariant();
		auto curMember = mMembersList.at(index);
	switch (role) {
	case ROLE_AGE: return curMember->getAge();
	case ROLE_NAME: return curMember->getName();
	case ROLE_ROLE: return curMember->getRole();
	}

    return QVariant();
}





Global QML Object
(https://doc.qt.io/qt-5/qtqml-modules-qmldir.html)

