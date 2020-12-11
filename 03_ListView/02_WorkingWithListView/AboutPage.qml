import QtQuick 2.0
import QtQuick.Controls 2.0

ApplicationWindow {
	width: 400
	height: 200
	visible: true
	title: "About"
	Text {
		id: element
		x: 23
		y: 37
		width: 315
		height: 133
		text: qsTr("About\nThis is about page!")
		textFormat: Text.PlainText
		font.pixelSize: 12
	}

}


