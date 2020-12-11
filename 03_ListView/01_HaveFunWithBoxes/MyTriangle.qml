import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Shapes 1.12

Shape {

	property int myIndex: 99
	property color myColor: "green"
    id: rectangle
    width: 100
    height: 100



    ShapePath {
        strokeWidth: 3
        strokeColor: "black"
		fillColor: myColor
		startX: 100; startY: 100
		PathLine { x: 50; y: 0}
		PathLine { x: 0; y: 100 }
		PathLine { x: 100; y: 100 }
    }



	 Text {
		 id: element
		 x: 38
		 y: 50
		 width: 100
		 height: 43
		 text: myIndex
		 anchors.horizontalCenter: rectangle.horizontalCenter
		 anchors.verticalCenterOffset: 14
		 anchors.horizontalCenterOffset: 0
		 font.family: "Tahoma"
		 font.bold: true
		 verticalAlignment: Text.AlignVCenter
		 horizontalAlignment: Text.AlignHCenter

		 font.pixelSize: 35
	 }
}

/*##^##
Designer {
	D{i:0;formeditorZoom:4}D{i:1;anchors_x:38;anchors_y:50}
}
##^##*/
