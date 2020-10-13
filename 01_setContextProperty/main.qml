import QtQuick 2.12
import QtQuick.Window 2.12

Window {
	visible: true
	width: 640
	height: 480
	title: qsTr("setContextProperty")

 Text {
	 id: element
	 x: 233
	 y: 216
	 text: theSameObjectInCpp.myName()
	font.pixelSize: 12
 }
}
