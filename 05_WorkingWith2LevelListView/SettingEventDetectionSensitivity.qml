import QtQuick 2.0

Item {
    anchors.fill: parent
    Rectangle{
        anchors.fill: parent
        color: "green"
    }
    Text {
        id: element
        x: 153
        y: 86
        text: qsTr("Setting Event Detection Sensitivity")
        font.pixelSize: 12
        color: "white"
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
