import QtQuick
import QtQuick.Controls
import qtbridge_intro

ApplicationWindow {
    visible: true
    width: 640
    height: 420

    title: "QtBridge Intro"

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "QtBridge Test"
            font.pixelSize: 24
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            text: "Test Rust Backend"

            onClicked: {
    console.log("QML: Button clicked")
    Backend.button_clicked()
}
        }
    }
}