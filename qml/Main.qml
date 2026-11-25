
import QtQuick
import QtQuick.Controls
import qtbridge_intro

ApplicationWindow {
    visible: true
    width: 640
    height: 420

    Component.onCompleted: Backend.say_hello()

    title: "QtBridge Intro"

    Button {
        anchors.centerIn: parent
        text: "Say Hello"

        onClicked: Backend.say_hello()
    }
}
