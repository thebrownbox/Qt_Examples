import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Sender")
    property int currentImageIndex: 0

    Button {
        id: btSendImage
        x: 78
        y: 344
        width: 156
        height: 35
        text: qsTr("SEND IMAGE")
        onClicked: mController.sendImage(currentImageIndex)
    }



    GroupBox {
        id: groupBox1
        x: 26
        y: 13
        width: 268
        height: 288
        title: qsTr("My Image")

        Image {
            id: image1
            fillMode: Image.Stretch
            anchors.fill: parent
            anchors.top: parent.top
            anchors.left: parent.left
            source: imageModel.get(currentImageIndex).sourceUrl
        }
    }

    Button {
        id: btDesc
        x: 78
        y: 307
        width: 64
        height: 22
        text: qsTr("<")
        onClicked: currentImageIndex = (currentImageIndex == 0) ? (imageModel.count - 1) : (currentImageIndex - 1)
    }

    Button {
        id: btAsc
        x: 170
        y: 307
        width: 64
        height: 22
        text: qsTr(">")
        onClicked: currentImageIndex = (currentImageIndex == (imageModel.count - 1)) ? 0 : (currentImageIndex + 1)
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
            text: qsTr("Sample input")
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
        id: btSendText
        x: 220
        y: 401
        width: 80
        height: 64
        text: qsTr("SEND\nTEXT")
        onClicked: mController.sendText(txtInput.text)
    }

    ListModel{
        id: imageModel
        ListElement{
            sourceUrl: "qrc:/images/images/my_image_1.png"
        }
        ListElement{
            sourceUrl: "qrc:/images/images/my_image_2.png"
        }
        ListElement{
            sourceUrl: "qrc:/images/images/my_image_3.png"
        }
        ListElement{
            sourceUrl: "qrc:/images/images/my_image_4.png"
        }
        ListElement{
            sourceUrl: "qrc:/images/images/my_image_5.png"
        }
    }




}
