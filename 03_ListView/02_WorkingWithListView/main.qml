import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

Window {
	id: window
	visible: true
	width: 640
	height: 480
	title: qsTr("Working with ListView")

	GroupBox {
		id: groupBox
		x: 21
		y: 70
		width: 307
		height: 388
		title: qsTr("Team Members")

  ListView {
	  id: listView
	  clip: true
	  anchors.topMargin: 10
	  anchors.fill: parent
	  delegate: Item {
		  x: 5
		  width: 80
		  height: 40
		  Row {
			  id: row1
			  spacing: 10
			  Rectangle {
				  width: 40
				  height: 40
				  color: colorCode
			  }

			  Text {
				  text: name
				  font.bold: true
				  anchors.verticalCenter: parent.verticalCenter
			  }
		  }
	  }
	  model: ListModel {
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
	}

 Text {
	 id: element
	 x: 213
	 y: 13
	 width: 215
	 height: 32
	 text: qsTr("Team Management")
	 anchors.horizontalCenterOffset: 1
	 anchors.horizontalCenter: parent.horizontalCenter
	 horizontalAlignment: Text.AlignHCenter
	 verticalAlignment: Text.AlignVCenter
	 font.pixelSize: 20
 }

 GroupBox {
	 id: groupBox1
	 x: 341
	 y: 70
	 width: 284
	 height: 170
	 title: qsTr("Infomation")

	 Button {
		 id: button
		 x: 15
		 y: 106
		 text: qsTr("UPDATE")
	 }

  Button {
	  id: button1
	  x: 160
	  y: 106
	  text: qsTr("DELETE")
  }
 }

 GroupBox {
	 id: groupBox2
	 x: 341
	 y: 253
	 width: 284
	 height: 205
	 title: qsTr("New Member")

  Button {
	  id: button2
	  x: 160
	  y: 126
	  text: qsTr("ADD")
  }
 }
}

/*##^##
Designer {
	D{i:2;anchors_height:160;anchors_width:110;anchors_x:9;anchors_y:32}
}
##^##*/
