import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
    anchors.fill: parent
    Rectangle{
        anchors.fill: parent
        color: "black"
    }

    Component{
        id: extendedItem
        Rectangle{
            height: 100
            width: 100
            color: "green"
        }
    }

    Component{
        id: categoryDelegate
        Item {
            property variant myData: model
            property variant curListView: parent.parent
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                Rectangle {
                    width: 40
                    height: 40
                    color: colorCode
                }

                Text {
                    text: name
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                    color: "white"
                }
                spacing: 10
            }
            Loader{
                id: subItemLoader
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    curListView.currentIndex = index
                    subItemLoader.sourceComponent = extendedItem
                }
            }

            Connections{
                target: curListView
                onCurrentIndexChanged:{
                    if(curListView.currentIndex != index)
                        subItemLoader.sourceComponent = null
                }
            }
        }
    }



    ListView {
        id: listView
        x: 55
        y: 68
        width: 433
        height: 341
        delegate: categoryDelegate
        model: categoryModel
        onCurrentIndexChanged: {
            console.log(">>> " + currentIndex)
        }
    }


    ListModel {
        id: categoryModel
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

}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
