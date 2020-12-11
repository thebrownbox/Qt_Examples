import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
	id: window
	visible: true
	width: 640
	height: 480
	title: qsTr("Working with ListView")

	menuBar: MenuBar {
		contentHeight: 10
		Menu {
			title: qsTr("&File")
			Action { text: qsTr("&Add New Member...") }
			MenuSeparator { }
			Action { text: qsTr("&Quit") }
		}

		Menu {
			title: qsTr("&Help")
			Action { text: qsTr("&About") }
		}
	}

	GroupBox {
		id: groupBox
		x: 21
		y: 38
		width: 307
		height: 420
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
		y: 0
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
		x: 339
		y: 104
		width: 284
		height: 245
		title: qsTr("Infomation")

		Button {
			id: myUpdateButton
			y: 106
			text: qsTr("UPDATE")
			anchors.bottom: parent.bottom
			anchors.bottomMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 15
		}

		Button {
			id: myDeleteButton
			x: 160
			y: 106
			text: qsTr("DELETE")
			anchors.bottom: parent.bottom
			anchors.bottomMargin: 0
			anchors.right: parent.right
			anchors.rightMargin: 0
		}
	}
}

/*##^##
Designer {
	D{i:2;anchors_height:160;anchors_width:110;anchors_x:9;anchors_y:32}D{i:14;anchors_x:15}
}
##^##*/
