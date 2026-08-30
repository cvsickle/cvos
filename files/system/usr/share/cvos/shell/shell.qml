import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import Quickshell.Services.SystemTray
import Quickshell.Widgets

ShellRoot {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData

            screen: modelData
            color: "#11111b"
            implicitHeight: 32
            exclusiveZone: 32

            anchors {
                top: true
                left: true
                right: true
            }

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                spacing: 12

                Row {
                    spacing: 6
                    Layout.alignment: Qt.AlignVCenter

                    Repeater {
                        model: Hyprland.workspaces

                        Rectangle {
                            required property var modelData
                            visible: modelData.id > 0
                            width: 22
                            height: 18
                            radius: 0
                            color: modelData.active ? "#33ccff" : "#313244"

                            Text {
                                anchors.centerIn: parent
                                text: modelData.id
                                color: modelData.active ? "#11111b" : "#cdd6f4"
                                font.family: "JetBrainsMono Nerd Font"
                                font.pixelSize: 11
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: Hyprland.dispatch("workspace " + modelData.id)
                            }
                        }
                    }
                }

                Item {
                    Layout.fillWidth: true
                }

                Text {
                    id: clock
                    Layout.alignment: Qt.AlignVCenter
                    color: "#cdd6f4"
                    font.family: "JetBrainsMono Nerd Font"
                    font.pixelSize: 13
                    text: Qt.formatDateTime(new Date(), "dddd HH:mm")

                    Timer {
                        interval: 1000
                        running: true
                        repeat: true
                        onTriggered: clock.text = Qt.formatDateTime(new Date(), "dddd HH:mm")
                    }
                }

                Item {
                    Layout.fillWidth: true
                }

                Row {
                    spacing: 10
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignRight

                    Repeater {
                        model: SystemTray.items

                        MouseArea {
                            required property var modelData
                            width: 18
                            height: 18
                            acceptedButtons: Qt.LeftButton | Qt.RightButton
                            onClicked: event => {
                                if (event.button === Qt.LeftButton)
                                    modelData.activate();
                                else
                                    modelData.secondaryActivate();
                            }

                            IconImage {
                                anchors.fill: parent
                                source: modelData.icon
                            }
                        }
                    }

                    Text {
                        color: "#cdd6f4"
                        font.family: "JetBrainsMono Nerd Font"
                        font.pixelSize: 13
                        text: "vol"

                        MouseArea {
                            anchors.fill: parent
                            onClicked: Hyprland.dispatch("exec pavucontrol")
                        }
                    }

                    Text {
                        color: "#cdd6f4"
                        font.family: "JetBrainsMono Nerd Font"
                        font.pixelSize: 13
                        text: "net"

                        MouseArea {
                            anchors.fill: parent
                            onClicked: Hyprland.dispatch("exec nm-connection-editor")
                        }
                    }

                    Text {
                        color: "#f38ba8"
                        font.family: "JetBrainsMono Nerd Font"
                        font.pixelSize: 13
                        text: "⏻"

                        MouseArea {
                            anchors.fill: parent
                            onClicked: Hyprland.dispatch("exec hyprlock")
                        }
                    }
                }
            }
        }
    }
}
