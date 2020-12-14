import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.12

ApplicationWindow {
    id: applicationWindow
    ComboBox {
        id: comboBox
        x: 192
        y: 135
    }

    Text {
        id: element
        y: 17
        text: qsTr("Text")
        anchors.left: parent.left
        anchors.leftMargin: 25
        font.pixelSize: 12
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_x:20}
}
##^##*/
