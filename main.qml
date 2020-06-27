import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Images")
    Image {
        id:img1
        x:10
        y:10
        source: "qrc:/Facebook.png"
        height: 100
        width: 100

        MouseArea{
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton
            onClicked:{
                if (mouse.button === Qt.LeftButton){
                    if(img2.source == "qrc:/GPlus.png")
                    {
                        img2.source= "qrc:/Youtube.png"
                    }
                    else{
                        img2.source="qrc:/GPlus.png"
                    }
                }
            }
        }
    }

    Image {
        id:img2
        x:10
        y:120

        source: "qrc:/GPlus.png"
        height: 100
        width: 100

        MouseArea{
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton
            onClicked:{
                if (mouse.button === Qt.LeftButton){
                    if(img1.source == "qrc:/Facebook.png")
                    {
                        img1.source= "qrc:/Twitter.png"
                    }
                    else{
                        img1.source="qrc:/Facebook.png"
                    }
                }
            }
        }
    }
}

