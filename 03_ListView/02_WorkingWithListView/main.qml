import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import TEAM_ROLE_IMPORT 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 520
    title: qsTr("Working with ListView")
    //	modality:

    menuBar: MenuBar {
        id: myMenuBar
        contentHeight: 10
        Menu {
            id: myFileMenu
            title: qsTr("&File")
            Action {
                text: qsTr("&Add New Member...")
                onTriggered: myAppController.onClickAddNewUser()
            }
            MenuSeparator { }
            Action {
                text: qsTr("&Quit")
                onTriggered: myAppController.onClickQuit()
            }
        }

        Menu {
            id: myHelpMenu
            title: qsTr("&Help")
            Action {
                text: qsTr("&About")
                onTriggered: myAppController.onClickAbout()
            }
        }

    }

    GroupBox {
        id: groupBox
        x: 21
        y: 38
        width: 307
        height: 420
        title: qsTr("Team Members")

        ListView {
            id: listView
            clip: true
            anchors.topMargin: 10
            anchors.fill: parent
            delegate: TeamMemberDelegate{}
            model: myAppController.myTeamListModel


           /*
           ListModel {
                ListElement {
                    name: "Grey"
                    colorCode: "grey"
                }

                ListElement {
                    name: "Red"
                    colorCode: "red"
                }

                ListElement {
                    name: "Blue"
                    colorCode: "blue"
                }

                ListElement {
                    name: "Green"
                    colorCode: "green"
                }
            }
            */
        }
    }

    Text {
        id: element
        x: 213
        y: 4
        width: 215
        height: 32
        text: qsTr("Team Management") + RoleList.get(0)
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 20
    }

    GroupBox {
        id: groupBox1
        x: 339
        y: 42
        width: 284
        height: 294
        title: qsTr("Infomation")

        Button {
            id: myUpdateButton
            y: 106
            text: qsTr("UPDATE")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 15
        }

        Button {
            id: myDeleteButton
            x: 160
            y: 106
            text: qsTr("DELETE")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }

        UserForm {
            id: userForm
            x: 0
            y: 20
            width: 260
            height: 193
        }

    }
}

/*##^##
Designer {
    D{i:14;anchors_x:15}D{i:2;anchors_height:160;anchors_width:110;anchors_x:9;anchors_y:32}
}
##^##*/
