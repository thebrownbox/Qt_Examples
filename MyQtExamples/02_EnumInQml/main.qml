import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

import INSIDE_CAP_IMPORT 1.0
//import INSIDE_NOCAP_IMPORT 1.0

import INSIDE_CAP2_IMPORT 1.0

import ClassForQmlImport 1.0

Window {
	visible: true
	width: 640
	height: 480
	title: qsTr("Hello World")

	Text {
		id: element
		x: 164
		y: 184
		width: 116
		height: 15
		text: qsTr("OUTSIDE_CLASS:")
		font.pixelSize: 12
	}

	Text {
		id: txtOutSide
		x: 292
		y: 184
		text: qsTr("value: ") + theSameObjectInCpp.outSideEnum
		font.pixelSize: 12
	}

	Text {
		id: element2
		x: 164
		y: 216
		text: qsTr("INSIDE_CAP")
		font.pixelSize: 12
	}

	Text {
		id: txtInSide
		x: 292
		y: 216
		text: qsTr("Value: ") + theSameObjectInCpp.inSideEnumCap
		font.pixelSize: 12
	}

	Text {
		id: element1
		x: 164
		y: 253
		text: qsTr("inside_NOCAP")
		font.pixelSize: 12
	}

	Text {
		id: txtInSideNoCap
		x: 292
		y: 253
		text:  qsTr("Value: ") + theSameObjectInCpp.inSideNoCap
		font.pixelSize: 12
	}

	Text {
		id: element3
		x: 69
		y: 300
		width: 178
		height: 9
		text: qsTr("qmlRegisterType<MyOtherClass>")
		font.pixelSize: 12
	}

	Text {
		id: txtOtherClass
		x: 292
		y: 300
		text: qsTr(" : ") + INSIDE_CAP.INSIDE_CAP_02
		font.pixelSize: 12
	}

	Text {
		id: element4
		x: 64
		y: 337
		text: qsTr("qmlRegisterType<MyTestClass>")
		font.pixelSize: 12
	}

	Text {
		id: txtTestClass
		x: 292
		y: 337
		text: qsTr(" : ") + INSIDE_CAP2.INSIDE_CAP2_02
		font.pixelSize: 12
	}

	ClassForQml{
		id: testObject
		index: 0
		onNotifyIndexChaged: {
			console.log("1) index: " + index)
		}

	}

	Button {
		id: button
		x: 69
		y: 398
		text: qsTr("Up Index")
		onClicked: {
			testObject.index = testObject.index + 1;
		}
	}
}
