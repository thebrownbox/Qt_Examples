import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import MY_SHAPE_TYPE_E_IMPORT 1.0

Window {
	visible: true
	width: 640
	height: 480
	title: qsTr("Have Fun With Boxes")
	id: myMainWindow
	objectName: "myMainWindow2"

	property int myCurrentIndex: 0
	property color myCurrentColor: "red"

	Item{
		id: sampleItem
		x: 493
		y: 133
		}

	MyBox{
		id: mySampleBox
		x: sampleItem.x
		y: sampleItem.y
		color: myCurrentColor
		myIndex: myCurrentIndex
		objectName: "mySampleBox"
		visible: comboBox.currentIndex == MY_SHAPE_TYPE_E.MY_SHAPE_BOX
	}

	MyCircle{
		color: myCurrentColor
		x: sampleItem.x
		y: sampleItem.y
		myIndex: myCurrentIndex
		visible: comboBox.currentIndex == MY_SHAPE_TYPE_E.MY_SHAPE_CIRCLE
	}

	MyTriangle{
		myColor: myCurrentColor
		x: sampleItem.x
		y: sampleItem.y
		myIndex: myCurrentIndex
		visible: comboBox.currentIndex == MY_SHAPE_TYPE_E.MY_SHAPE_TRIANGLE
	}


	GroupBox {
		id: myGroupBox
		x: 19
		y: 30
		width: 436
		height: 436
		title: qsTr("My Boxes")
		Flickable {
			id: myFlicker
			pixelAligned: false
			interactive: true
			clip: true
			anchors.fill: parent
			contentHeight: getContentHeightForFlickable()
			contentWidth: myGridView.width
			rebound: Transition {
				NumberAnimation {
					properties: "x,y"
					duration: 1000
					easing.type: Easing.InOutQuad
				}
			}
			onContentHeightChanged: myFlicker.contentY = Math.max(myFlicker.contentY, myFlicker.contentHeight - myFlicker.height)

//    Rectangle{
//        color: "red"
//        height: getContentHeightForFlickable()
//        width: myGridView.width
//    }
			Grid {
				id: myGridView
				objectName: "myGridView"
				width: 406
				height: 800

				add: Transition {
					 NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad }
				 }

				 onChildrenChanged: {
					console.log("onChildrenChanged: " + myGridView.children.length)

				 }
			}
		}
	}


	Button {
		visible: true
		id: myGenButton
		x: 487
		y: 250
		width: 111
		height: 40
		enabled: !myGenTimer.running
		text: qsTr("GENERATE")
		onClicked: onClickGenerateShape()
	}

	Button {
		x: 487
		y: 359
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
		onClicked: myAppController.addShapeByCpp(myGridView, comboBox.currentIndex, myCurrentIndex, myCurrentColor)
	}

 Button {
	 x: 487
	 y: 426
	 width: 111
	 height: 40
	 text: qsTr("CLEAR")
	 onClicked: {
		 myGridView.children = ""
	 }
 }


	ComboBox {
		id: comboBox
		x: 473
		y: 53
		currentIndex: 0
		enabled: !myGenTimer.running
		font.weight: Font.Bold
		font.pointSize: 10
		wheelEnabled: true
		flat: false
		model: ["BOX", "CIRCLE", "TRIANGLE"]
	}

	Timer{
		id: myGenTimer
		property int count: 0
		property int max_COUNT: 2000 / interval
		interval: 50
		repeat: true
		running: false
		onTriggered: {
			count++
//			console.log("alo: " + count)
			myCurrentColor = Qt.rgba(Math.random(),Math.random(),Math.random(),1)
			myCurrentIndex = Math.floor(Math.random()*100)
			comboBox.currentIndex = Math.floor(Math.random()*10) % comboBox.count
			if(count >= max_COUNT)
				running = false;
		}
	}



 function onClickGenerateShape()
	{
		myGenTimer.count = 0
		myGenTimer.running = true
	}

	function getContentHeightForFlickable()
	{
        var numOfBox = myGridView.children.length;
        var numOfRow = numOfBox == 0 ? 1 : (numOfBox%4 == 0 ? (numOfBox/4) : (Math.floor(numOfBox/4)+1))
        var h = numOfRow * mySampleBox.height
        console.log("h = " + h)
        return h
	}

	function addBoxByQml()
	{
		console.log(">> addBoxByQml ")
		var newObject  = createShape(comboBox.currentIndex, myCurrentIndex, myCurrentColor)
	}


	function createShape(type, index, color)
	{
		var component = null
		if(type == MY_SHAPE_TYPE_E.MY_SHAPE_CIRCLE){
			component = Qt.createComponent("MyCircle.qml")
		}else if(type == MY_SHAPE_TYPE_E.MY_SHAPE_TRIANGLE){
			component = Qt.createComponent("MyTriangle.qml")
		}else{
			component = Qt.createComponent("MyBox.qml")
		}
		var newObject = component.createObject(myGridView)
		newObject.myColor = myCurrentColor
		newObject.myIndex = myCurrentIndex
		return newObject
	}
}
