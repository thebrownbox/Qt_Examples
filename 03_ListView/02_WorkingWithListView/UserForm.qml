import QtQuick 2.0
import QtQuick.Controls 2.0
import TEAM_ROLE_IMPORT 1.0

Item {
    property string userName : "Default Name"
    property int userAge: 99
    property int userRole: TEAM_ROLE.ROLE_MAX

    width: 280
    height: 193


    Label {
        id: label
        x: 0
        y: 27
        width: 76
        height: 28
        text: qsTr("Name:")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    TextEdit {
        id: txtName
        x: 82
        y: 27
        width: 210
        height: 28
        text: userName
        verticalAlignment: Text.AlignVCenter
        selectedTextColor: "#ffffff"
        font.pixelSize: 12
    }

    Label {
        id: label1
        x: 0
        y: 61
        width: 76
        height: 26
        text: qsTr("Age:")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    TextEdit {
        id: txtAge
        x: 82
        y: 61
        width: 94
        height: 26
        text: "99"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 12
        selectedTextColor: "#ffffff"
    }

    Label {
        id: label2
        x: 0
        y: 120
        width: 76
        height: 40
        text: qsTr("Role")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    ComboBox {
        id: txtRoleCombo
        x: 82
        y: 120
        width: 173
        height: 40
        textRole: "text"
        model: teamRoleModel
    }

    ListModel {
        id: teamRoleModel
        ListElement {
            text: "BA"
            roleId: TEAM_ROLE.ROLE_BA
        }

        ListElement {
            text: "QA"
            roleId: TEAM_ROLE.ROLE_QA
        }

        ListElement {
            roleId: TEAM_ROLE.ROLE_TESTER
            text: "Tester"
        }

        ListElement {
            roleId: TEAM_ROLE.ROLE_DEVLOPER
            text: "Devloper"
        }
        ListElement {
            roleId: TEAM_ROLE.ROLE_TEAM_LEADER
            text: "Team Leader"
        }
    }


}
