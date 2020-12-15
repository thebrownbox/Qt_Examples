import QtQuick 2.0
import QtQuick.Controls 2.0
import TEAM_ROLE_IMPORT 1.0

Item {
    width: 80
    height: 40
    Row {
        id: row1
        spacing: 10
        Rectangle {
            width: 40
            height: 40
            color: "red"
        }

        Text {
            text: mAge
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
        }
    }


    function getColorByRole(role){
        if(role == TEAM_ROLE.ROLE_BA) return
    }
}
