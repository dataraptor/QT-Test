import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rect1
    }

    Button {
        id: b1
        onClicked: {
            var newObject = Qt.createQmlObject(
                'import QtQuick 2.0; Rectangle {color: "red"; width: 500; height: 500}', 
                rect1, 
                "dynamicSnippet1");
        }
    }
}
