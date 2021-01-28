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
		color: SingleData.ROLE_DEVELOPER_COLOR
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
        id: roleCombobox
        x: 82
        y: 120
        width: 173
        height: 40
        textRole: "text"
        currentIndex: 0
        model: teamRoleModel

        delegate: ItemDelegate {
            width: roleCombobox.width
            contentItem: Item {
                anchors.fill: parent
                Rectangle{
                    anchors.fill: parent
                    color: model.color
                    MouseArea{
                        id: mouseElement
                        anchors.fill: parent
                        onClicked: {
                            console.log("Click")
                            roleCombobox.currentIndex = model.index
                            roleCombobox.popup.close()
                        }
                        hoverEnabled: true
                    }
                }

                Text {
                    id: txtTextElement
                    anchors.fill: parent
                    anchors.leftMargin: 5
                    text: model.text
                    elide: Text.ElideRight
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: mouseElement.containsMouse ? 14 : 12
                    font.bold: mouseElement.containsMouse
                }
            }
        }
        background: Rectangle {
            implicitWidth: 120
            implicitHeight: 40
            border.width: 1
            color: teamRoleModel.get(roleCombobox.currentIndex).color
        }

        contentItem: Text {
            anchors.left: parent.left
            anchors.leftMargin: 10
            text: roleCombobox.displayText
            font.pixelSize: 13
            font.bold: true
            verticalAlignment: Text.AlignVCenter
        }
    }

    ListModel {
        id: teamRoleModel
        ListElement {
            property color color: "red" //SingleData.ROLE_BA_COLOR
            roleId: TEAM_ROLE.ROLE_BA
            text: "BA"// SingleData.test
        }

        ListElement {
            property color color: "green" //SingleData.ROLE_TESTER_COLOR
            roleId: TEAM_ROLE.ROLE_TESTER
            text: "Tester" //SingleData.rOLE_TESTER_TEXT
        }

        ListElement {
			property color color: "blue" //SingleData.ROLE_DEVELOPER_COLOR
            roleId: TEAM_ROLE.ROLE_DEVLOPER
            text: "Developer" //SingleData.rOLE_DEVELOPER_TEXT
        }
        ListElement {
            property color color: "yellow" //SingleData.ROLE_TEAMLEADER_COLOR
            roleId: TEAM_ROLE.ROLE_TEAM_LEADER
            text: "Team Leader" //SingleData.rOLE_TEAMLEADER_TEXT
        }
    }


}
