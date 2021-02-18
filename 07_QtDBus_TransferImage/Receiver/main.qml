import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Receiver")

    Button {
        id: button1
        x: 64
        y: 333
        width: 182
        height: 35
        text: qsTr("REQUEST IMAGE")
    }

    GroupBox {
        id: groupBox1
        x: 21
        y: 31
        width: 268
        height: 288
        title: qsTr("Received Image")

        Image {
            id: image1
            fillMode: Image.Stretch
            anchors.fill: parent
            anchors.top: parent.top
            anchors.left: parent.left
        }
    }

    Rectangle{
        x: 8
        y: 401
        width: 186
        height: 64
        color: "#f3f1f1"
        border.color: "#999999"
        TextInput {
            id: txtInput
            anchors.fill: parent
            text: qsTr("")
            readOnly: true
            anchors.rightMargin: 2
            anchors.leftMargin: 2
            anchors.bottomMargin: 2
            anchors.topMargin: 2
            cursorVisible: true
            clip: true
            font.pixelSize: 12
        }
    }

    Button {
        id: btRequestText
        x: 220
        y: 401
        width: 80
        height: 64
        text: qsTr("REQUEST\nTEXT")
    }


}
