import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

Window {
	visible: true
	width: 640
	height: 480
	title: qsTr("Have Fun With Boxes")
	id: myMainWindow
	objectName: "myMainWindow2"

	Button {
		visible: true
		id: myGenButton
		x: 487
		y: 252
		width: 111
		height: 40
		text: qsTr("GENERATE")
		onClicked: myAppController.clickGenerateBox(mySampleBox);
	}

	MyBox{
		id: mySampleBox
		x: 493
		y: 133
		myIndex: 2
		objectName: "mySampleBox"
	}



	GroupBox {
		id: myGroupBox
		x: 19
		y: 30
		width: 436
		height: 436
		title: qsTr("My Boxes")
		Flickable {
			anchors.rightMargin: 9
			pixelAligned: false
			interactive: true
			clip: true
			anchors.fill: parent
			contentHeight: getContentHeightForFlickable()
			contentWidth: myGridView.width

			Grid {
				id: myGridView
				objectName: "myGridView"
				x: 2
				y: 11
				width: 406
				height: 800

//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}
//				MyBox {}

			}
		}


	}




	Button {
		x: 487
		y: 366
		width: 111
		height: 40
		text: qsTr("Add by Qml")
		onClicked: addBoxByQml()
	}

	Button {
		x: 487
		y: 308
		width: 111
		height: 40
		text: qsTr("Add by Cpp")
		onClicked: myAppController.addBoxByCpp(myGridView)
	}

	function getContentHeightForFlickable()
	{
		return Math.max(0, (myGridView.children.length / 4 + 1) * mySampleBox.height)
	}

	function addBoxByQml()
	{
		console.log(">> addBoxByQml ")
	}
}
