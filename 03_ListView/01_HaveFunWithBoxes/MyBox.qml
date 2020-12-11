import QtQuick 2.0

Rectangle {

	property int myIndex: 0

	id: rectangle
	width: 100
	height: 100
	color: "red"
	border.color: "black"
	radius: 10
	border.width: 3

 Text {
	 id: element
	 x: 38
	 y: 50
	 anchors.fill: parent
	 text: myIndex
	 font.family: "Tahoma"
	 font.bold: true
	 verticalAlignment: Text.AlignVCenter
	 horizontalAlignment: Text.AlignHCenter

	 font.pixelSize: 35
 }
}

/*##^##
Designer {
	D{i:1;anchors_x:38;anchors_y:50}
}
##^##*/