import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    id: window
    property double scaleFactor: 0.5

    visible: true
    width: 1920 * scaleFactor
    height: 720 * scaleFactor
    title: qsTr("Hello World")

    Text {
        id: element
        x: 326
        y: 5
        width: 309
        height: 28
        text: qsTr("Setting Menus")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    ListModel {
        id: menuListModel
        ListElement {
            title: "Recoarding Options"
            qmlSource: "qrc:/SettingRecordingOptions.qml"
        }

        ListElement {
            title: "Event Detection Sensitivity"
            qmlSource: "qrc:/SettingEventDetectionSensitivity.qml"
        }

        ListElement {
            title: "Time lapse Recording Interval"
            qmlSource: "qrc:/SettingTimeLapseRecordingInterval.qml"
        }

        ListElement {
            title: "Build in cam s/w info"
            qmlSource: ""
        }

        ListElement {
            title: "Delete all Recorded videos"
            qmlSource: ""
        }

        ListElement {
            title: "Reset built in cam setting"
            qmlSource: ""
        }
    }

    Component{
        id: menuDelegate
        Item {
            property variant myData: model
            property variant myListView: parent.parent
            width: parent.width
            height: 60
            Text {
                text: title
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
                color: "white"
            }
            Rectangle{
                width: parent.width
                height: 1
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    //console.log(parent.parent.parent)
                    myListView.currentIndex = index
                }
            }
        }
    }

    Rectangle{
        x: 0
        y: 46
        width: 342
        height: 314
        color: "#1a1a1a"
        ListView {
            currentIndex: 0
            id: listMainMenu
            anchors.fill: parent
            delegate: menuDelegate
            model: menuListModel
            onCurrentIndexChanged: {
                console.log("Log>>> " + currentIndex)
            }
        }
    }

    Rectangle{
        x: 342
        y: 46
        width: 618
        height: 314
        color: "black"
        Loader{
            anchors.fill: parent
            id: subMenuLoader
            source: listMainMenu.currentItem.myData.qmlSource
        }
    }

    Component.onCompleted: {
        console.log("Log >>> " + listMainMenu.currentItem.myData.qmlSource + " | " + listMainMenu.currentIndex)
    }


}

/*##^##
Designer {
    D{i:1;anchors_y:12}
}
##^##*/
