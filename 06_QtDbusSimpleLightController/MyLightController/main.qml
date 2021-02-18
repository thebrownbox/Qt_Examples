import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.0

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("My Light Controller")

    Button {
        id: btnLightOn
        x: 48
        y: 213
        text: qsTr("LIGHT ON")
        onClicked: controller.turnOn()
    }

    Button {
        id: btnLightOff
        x: 203
        y: 213
        text: qsTr("LIGHT OFF")
        onClicked: controller.turnOff()
    }
}
