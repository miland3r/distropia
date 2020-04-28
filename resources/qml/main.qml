import QtGraphicalEffects 1.0
import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import Process 1.0

ApplicationWindow {

    id: control
    visible: true
    width: 800
    height: 670

    title: qsTr("Distopia")

    Rectangle {
        anchors.fill: parent
        color: "#31363b"

        Rectangle {
            id: host_info
            x: 10
            y: 10
            width: 320
            height: 185

            gradient: Gradient { // UbuntuTouch-like background
                GradientStop { position: 0.0; color: "#2d3136"; }
                GradientStop { position: 0.5; color: "#232629"; }
            }

            radius: 10

            Text {
                text: "<strong>Host System Information</strong>"
                font.family: "Helvetica"
                horizontalAlignment: Text.AlignHCenter
                topPadding: 5
                width: host_info.width
                font.pointSize: 8
                color: "#3daee9"
            }    

            Rectangle {
                x: 10
                y: 30
                width: 300
                height: 145
                color: "#00000000"
                
                GridLayout {
                    id: host_info_grid
                    columns: 2

                    Text {
                        text: "Operating System:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        id: host_os_variant
                        text: "Unknown"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Kernel/Version:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "5.1.17-gentoo"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Architecture:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "64bit"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "CPU Family:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "GenuineIntel"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "CPU Details:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "i7-2920XM @ 3.50 GHz"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Number of Cores:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "8"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Total Memory: "
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "32 Gb"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                }    
            }
        }
        
        InnerShadow {
            anchors.fill: host_info
            horizontalOffset: 3
            verticalOffset: 3
            radius: 10.0
            samples: 17
            color: "#80000000"
            source: host_info
        }

        Rectangle {
            id: vm_info
            x: 10
            y: 205
            width: 320
            height: 200

            gradient: Gradient { // UbuntuTouch-like background
                GradientStop { position: 0.0; color: "#2d3136"; }
                GradientStop { position: 0.5; color: "#232629"; }
            }

            radius: 10
            Text {
                text: "<strong>Guest System Information</strong>"
                font.family: "Helvetica"
                horizontalAlignment: Text.AlignHCenter
                topPadding: 5
                width: host_info.width
                font.pointSize: 8
                color: "#ec621b"
            }    

            Rectangle {
                x: 10
                y: 30
                width: 300
                height: 145
                color: "#00000000"
                
                GridLayout {
                    id: vm_info_grid
                    columns: 2

                    Text {
                        text: "Operating System:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "Microsoft Windows"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Kernel/Version:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "8.1"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Architecture:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "64bit"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "CPU Family:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "Intel"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "CPU Details:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "Intel Xeon E312xx @ 3.50 GHz"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Number of Cores:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "6"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "System Memory: "
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "16 Gb"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "GPU Details:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "GeForce RTX 2080Ti 11GB"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                }    
            }
        }
        
        InnerShadow {
            anchors.fill: vm_info
            horizontalOffset: 3
            verticalOffset: 3
            radius: 10.0
            samples: 17
            color: "#80000000"
            source: vm_info
        }
        
        Rectangle {
            id: vm_io_controls
            x: 10
            y: 415
            width: 320
            height: 245

            gradient: Gradient { // UbuntuTouch-like background
                GradientStop { position: 0.0; color: "#2d3136"; }
                GradientStop { position: 0.5; color: "#232629"; }
            }

            radius: 10
            Text {
                text: "<strong>Guest Sound & Input Controls</strong>"
                font.family: "Helvetica"
                horizontalAlignment: Text.AlignHCenter
                topPadding: 5
                width: vm_io_controls.width
                font.pointSize: 8
                color: "#ec621b"
            }
            
            Rectangle {
                x: 10
                y: 30
                width: 300
                height: 35
                color: "#00000000"
//                 color: "green"
                
                GridLayout {
                    id: io_controls_grid
                    columns: 2
                    
                    Label {
                        id: jack_control_lbl
                        text: "Jack2 Audio Server:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        width: jack_control_bg.width
                        height: jack_control_bg.height
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }    

                    Button {
                        id: jack_control
                        
                        background: Rectangle {
                            id: jack_control_bg
                            implicitWidth: 100
                            implicitHeight: 30
                            color: jack_control.down ? "#26282a" : "#31363b"
                            border.color: "#26282a"
                            border.width: 1
                            radius: 4.0

                            MouseArea {
                                anchors.fill: parent
                                onPressed: {
                                    jack_control_btn_up.visible = false
                                    jack_control_btn_down.visible = true
                                    
                                    if (backend.validateIP(jack_control_txt.text)) {
                                        jack_control_txt.text = "Enabling"
                                        jack_control_txt.color = "#005374"
                                    }
                                    else {
                                        jack_control_txt.text = "Disabling"
                                        jack_control_txt.color = "#005374"
                                    }
                                }    
                                onReleased: {
                                    jack_control_txt.color = "#ec621b"
                                    jack_control_txt.text = "Enabled"

                                    jack_control_btn_up.visible = true
                                    jack_control_btn_down.visible = false
                                }
                            }
                            
                            Text {
                                id: jack_control_txt
                                text: "Disabled"
                                font.family: "Helvetica"
                                font.pointSize: 9
                                color: "#616569"
                                width: jack_control_bg.width
                                height: jack_control_bg.height
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }    
                        }
                        DropShadow {
                            id: jack_control_btn_up
                            anchors.fill: jack_control_bg
                            horizontalOffset: 2
                            verticalOffset: 2
                            radius: 4.0
                            samples: 17
                            color: "#50000000"
                            source: jack_control_bg
                            visible: true
                        }
                        InnerShadow {
                            id: jack_control_btn_down
                            anchors.fill: jack_control_bg
                            horizontalOffset: 3
                            verticalOffset: 3
                            radius: 4.0
                            samples: 17
                            color: "#80000000"
                            source: jack_control_bg
                            visible: false
                        }
                    }    
                    
                    Label {
                        id: snd_control_lbl
                        text: "Scream Listener:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        width: snd_control_bg.width
                        height: snd_control_bg.height
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }    

                    Button {
                        id: snd_control
                        
                        background: Rectangle {
                            id: snd_control_bg
                            implicitWidth: 100
                            implicitHeight: 30
                            color: snd_control.down ? "#26282a" : "#31363b"
                            border.color: "#26282a"
                            border.width: 1
                            radius: 4.0

                            MouseArea {
                                anchors.fill: parent
                                onPressed: {
                                    snd_control_btn_up.visible = false
                                    snd_control_btn_down.visible = true
                                    
                                    if (backend.validateIP(snd_control_txt.text)) {
                                        snd_control_txt.text = "Enabling"
                                        snd_control_txt.color = "#005374"
                                    }
                                    else {
                                        snd_control_txt.text = "Disabling"
                                        snd_control_txt.color = "#005374"
                                    }
                                }    
                                onReleased: {
                                    snd_control_txt.color = "#ec621b"
                                    snd_control_txt.text = "Enabled"

                                    snd_control_btn_up.visible = true
                                    snd_control_btn_down.visible = false
                                }
                            }
                            
                            Text {
                                id: snd_control_txt
                                text: "Disabled"
                                font.family: "Helvetica"
                                font.pointSize: 9
                                color: "#616569"
                                width: snd_control_bg.width
                                height: snd_control_bg.height
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }    
                        }
                        DropShadow {
                            id: snd_control_btn_up
                            anchors.fill: snd_control_bg
                            horizontalOffset: 2
                            verticalOffset: 2
                            radius: 4.0
                            samples: 17
                            color: "#50000000"
                            source: snd_control_bg
                            visible: true
                        }
                        InnerShadow {
                            id: snd_control_btn_down
                            anchors.fill: snd_control_bg
                            horizontalOffset: 3
                            verticalOffset: 3
                            radius: 4.0
                            samples: 17
                            color: "#80000000"
                            source: snd_control_bg
                            visible: false
                        }
                    }    
                    Label {
                        id: io_control_lbl
                        text: "Barrier Server:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        width: io_control_bg.width
                        height: io_control_bg.height
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }    

                    Button {
                        id: io_control
                        
                        background: Rectangle {
                            id: io_control_bg
                            implicitWidth: 100
                            implicitHeight: 30
                            color: io_control.down ? "#26282a" : "#31363b"
                            border.color: "#26282a"
                            border.width: 1
                            radius: 4.0

                            MouseArea {
                                anchors.fill: parent
                                onPressed: {
                                    io_control_btn_up.visible = false
                                    io_control_btn_down.visible = true
                                    
                                    if (backend.validateIP(io_control_txt.text)) {
                                        io_control_txt.text = "Enabling"
                                        io_control_txt.color = "#005374"
                                    }
                                    else {
                                        io_control_txt.text = "Disabling"
                                        io_control_txt.color = "#005374"
                                    }
                                }    
                                onReleased: {
                                    io_control_txt.color = "#ec621b"
                                    io_control_txt.text = "Enabled"

                                    io_control_btn_up.visible = true
                                    io_control_btn_down.visible = false
                                }
                            }
                            
                            Text {
                                id: io_control_txt
                                text: "Disabled"
                                font.family: "Helvetica"
                                font.pointSize: 9
                                color: "#616569"
                                width: io_control_bg.width
                                height: io_control_bg.height
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }    
                        }
                        DropShadow {
                            id: io_control_btn_up
                            anchors.fill: io_control_bg
                            horizontalOffset: 2
                            verticalOffset: 2
                            radius: 4.0
                            samples: 17
                            color: "#50000000"
                            source: io_control_bg
                            visible: true
                        }
                        InnerShadow {
                            id: io_control_btn_down
                            anchors.fill: io_control_bg
                            horizontalOffset: 3
                            verticalOffset: 3
                            radius: 4.0
                            samples: 17
                            color: "#80000000"
                            source: io_control_bg
                            visible: false
                        }
                    }    
                    Label {
                        id: net_control_lbl
                        text: "Network Access:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        width: net_control_bg.width
                        height: net_control_bg.height
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }    

                    Button {
                        id: net_control
                        
                        background: Rectangle {
                            id: net_control_bg
                            implicitWidth: 100
                            implicitHeight: 30
                            color: net_control.down ? "#26282a" : "#31363b"
                            border.color: "#26282a"
                            border.width: 1
                            radius: 4.0

                            MouseArea {
                                anchors.fill: parent
                                onPressed: {
                                    net_control_btn_up.visible = false
                                    net_control_btn_down.visible = true
                                    
                                    if (backend.validateIP(net_control_txt.text)) {
                                        net_control_txt.text = "Enabling"
                                        net_control_txt.color = "#005374"
                                    }
                                    else {
                                        net_control_txt.text = "Disabling"
                                        net_control_txt.color = "#005374"
                                    }
                                }    
                                onReleased: {
                                    net_control_txt.color = "#ec621b"
                                    net_control_txt.text = "Enabled"

                                    net_control_btn_up.visible = true
                                    net_control_btn_down.visible = false
                                }
                            }
                            
                            Text {
                                id: net_control_txt
                                text: "Disabled"
                                font.family: "Helvetica"
                                font.pointSize: 9
                                color: "#616569"
                                width: net_control_bg.width
                                height: net_control_bg.height
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }    
                        }
                        DropShadow {
                            id: net_control_btn_up
                            anchors.fill: net_control_bg
                            horizontalOffset: 2
                            verticalOffset: 2
                            radius: 4.0
                            samples: 17
                            color: "#50000000"
                            source: net_control_bg
                            visible: true
                        }
                        InnerShadow {
                            id: net_control_btn_down
                            anchors.fill: net_control_bg
                            horizontalOffset: 3
                            verticalOffset: 3
                            radius: 4.0
                            samples: 17
                            color: "#80000000"
                            source: net_control_bg
                            visible: false
                        }
                    }    
                }
            }    
        }
        InnerShadow {
            anchors.fill: vm_io_controls
            horizontalOffset: 3
            verticalOffset: 3
            radius: 10.0
            samples: 17
            color: "#80000000"
            source: vm_io_controls
        }
        
        Rectangle {
            id: vm_controls
            x: 340
            y: 10
            width: 450
            height: 650

            gradient: Gradient { 
                GradientStop { position: 0.0; color: "#2d3136"; }
                GradientStop { position: 0.5; color: "#232629"; }
            }

            radius: 10

            Text {
                text: "<strong>Virtualization Status & Controls</strong>"
                font.family: "Helvetica"
                horizontalAlignment: Text.AlignHCenter
                topPadding: 5
                width: vm_controls.width
                font.pointSize: 8
                color: "#3daee9"
            }    

            Rectangle {
                x: 10
                y: 30
                width: 430
                height: 310
                color: "#00000000"
                
                GridLayout {
                    id: vm_status_grid
                    columns: 2

                    Text {
                        text: "KVM Virtual Machine Status:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "Started"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#12e400"
                    }
                    Text {
                        text: "Virtual Machine Uptime:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        id: vm_status_uptime
                        text: "2:14"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "IP Address:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "0.0.0.0"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-GPU Link Speed:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "5.0GT/s"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-GPU Utilization:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "53.4%"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-GPU Temperature:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "42.4°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-GPU Fan:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "2304 RPM"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "CPU Temperature:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "61.0°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Processor Fan:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "4108 RPM"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Ambient Temperature:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "45.0°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "SODIMM Temperature:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "42.0°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "Host GPU Temperature:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "50.0°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-CPU Cores Pinned:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "Yes"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#12e400"
                    }
                    Text {
                        text: "Scream Sound Server Status:"
                        font.family: "Helvetica"
                        leftPadding: 55
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "Stopped"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#e40000"
                    }
                    Text {
                        text: "Barrier Input Server Status:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "Started"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#12e400"
                    }
                }            
            }
            Rectangle {
                x: 10
                y: 350
                width: 430
                height: 75
                color: "#00000000"
                border.color: "#616569"
                border.width: 1
                radius: 10
                
                GridLayout {
                    id: vm_vcpuu_grid
                    columns: 4

                    Text {
                        leftPadding: 25
                        topPadding: 5
                        text: "V-Core 0 Utilization:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        topPadding: 5
                        text: "89.0 %"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        topPadding: 5
                        text: "V-Core 3 Utilization:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        topPadding: 5
                        text: "34.8 %"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        leftPadding: 25
                        text: "V-Core 1 Utilization:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "88.8 %"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-Core 4 Utilization:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "7.2 %"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        leftPadding: 25
                        text: "V-Core 2 Utilization:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "22.4 %"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-Core 5 Utilization:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "18.6 %"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                }
            }    
            Rectangle {
                x: 10
                y: 435
                width: 430
                height: 75
                color: "#00000000"
                border.color: "#616569"
                border.width: 1
                radius: 10
                
                GridLayout {
                    id: vm_vcpuf_grid
                    columns: 4
                    
                    Text {
                        leftPadding: 25
                        topPadding: 5
                        text: "V-Core 0 Freq:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        topPadding: 5
                        text: "4.17 GHz"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        topPadding: 5
                        text: "V-Core 3 Freq:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        topPadding: 5
                        text: "2.28 GHz"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        leftPadding: 25
                        text: "V-Core 1 Freq:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "3.8 GHz"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-Core 4 Freq:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "988 MHz"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        leftPadding: 25
                        text: "V-Core 2 Freq:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "3.21 GHz"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-Core 5 Freq:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "2.98 GHz"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                }
            }    
            Rectangle {
                x: 10
                y: 520
                width: 430
                height: 75
                color: "#00000000"
                border.color: "#616569"
                border.width: 1
                radius: 10
                
                GridLayout {
                    id: vm_vcput_grid
                    columns: 4
                    
                    Text {
                        leftPadding: 25
                        topPadding: 5
                        text: "V-Core 0 Temp:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        topPadding: 5
                        text: "61.9°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        topPadding: 5
                        text: "V-Core 3 Temp:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        topPadding: 5
                        text: "60.5°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        leftPadding: 25
                        text: "V-Core 1 Temp:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "61.2°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-Core 4 Temp:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "58.9°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        leftPadding: 25
                        text: "V-Core 2 Temp:"
                        font.family: "Helvetica"
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "60.1°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                    Text {
                        text: "V-Core 5 Temp:"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                        Layout.alignment: Qt.AlignRight
                    }
                    Text {
                        text: "60.0°C"
                        font.family: "Helvetica"
                        leftPadding: 5
                        font.pointSize: 8
                        color: "#ffffff"
                    }
                }    
            }    
            Rectangle {
                x: 10
                y: 610
                width: 430
                height: 35
                color: "#00000000"

                GridLayout {
                    id: vm_controls_grid
                    columns: 4

                    Button {
                        id: vm_start_control
                        enabled: true
                        
                        background: Rectangle {
                            id: vm_start_control_bg
                            implicitWidth: 100
                            implicitHeight: 30
                            color: vm_start_control.down ? "#26282a" : "#31363b"
                            border.color: "#26282a"
                            border.width: 1
                            radius: 4.0

                            MouseArea {
                                anchors.fill: parent
                                onPressed: {
                                    vm_start_control_btn_up.visible = false
                                    vm_start_control_btn_down.visible = true
                                    vm_start_control_txt.text = "Starting"
                                    vm_start_control_txt.color = "#005374"
                                }
                                onReleased: {
                                    vm_config_control.enabled = false
                                    vm_config_control_txt.color = "#616569"
                                    vm_config_control_btn_up.visible = false
                                    vm_config_control_btn_down.visible = true

                                    vm_start_control.enabled = false
                                    vm_start_control_txt.color = "#3daee9"
                                    vm_start_control_txt.text = "Started"

                                    vm_stop_control_txt.text = "Stop"
                                    vm_stop_control_txt.color = "#ffffff"
                                    vm_stop_control_btn_up.visible = true
                                    vm_stop_control_btn_down.visible = false
                                    vm_stop_control.enabled = true
                                }
                                //onClicked: console.log("button clicked")
                            }
                            
                            Text {
                                id: vm_start_control_txt
                                text: "Start"
                                font.family: "Helvetica"
                                font.pointSize: 9
                                color: "#ffffff"
                                width: vm_start_control_bg.width
                                height: vm_start_control_bg.height
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }    
                        }
                        DropShadow {
                            id: vm_start_control_btn_up
                            anchors.fill: vm_start_control_bg
                            horizontalOffset: 2
                            verticalOffset: 2
                            radius: 4.0
                            samples: 17
                            color: "#50000000"
                            source: vm_start_control_bg
                            visible: true
                        }
                        InnerShadow {
                            id: vm_start_control_btn_down
                            anchors.fill: vm_start_control_bg
                            horizontalOffset: 3
                            verticalOffset: 3
                            radius: 4.0
                            samples: 17
                            color: "#80000000"
                            source: vm_start_control_bg
                            visible: false
                        }
                    }    
                    Button {
                        id: vm_stop_control
                        enabled: false
                        
                        background: Rectangle {
                            id: vm_stop_control_bg
                            implicitWidth: 100
                            implicitHeight: 30
                            color: vm_stop_control.down ? "#26282a" : "#31363b"
                            border.color: "#26282a"
                            border.width: 1
                            radius: 4.0
                        
                            MouseArea {
                                anchors.fill: parent
                                onPressed: {
                                    vm_stop_control_btn_up.visible = false
                                    vm_stop_control_btn_down.visible = true
                                    vm_stop_control_txt.text = "Stopping"
                                    vm_stop_control_txt.color = "#005374"
                                }
                                onReleased: {
                                    vm_stop_control.enabled = false
                                    vm_stop_control_txt.color = "#616569"
                                    vm_stop_control_txt.text = "Stopped"
                                    
                                    vm_config_control_txt.color = "#ffffff"
                                    vm_config_control_btn_up.visible = true
                                    vm_config_control_btn_down.visible = false
                                    vm_config_control.enabled = true

                                    vm_start_control_txt.text = "Start"
                                    vm_start_control_txt.color = "#ffffff"
                                    vm_start_control_btn_up.visible = true
                                    vm_start_control_btn_down.visible = false
                                    vm_start_control.enabled = true
                                    
                                    
                                }
                                //onClicked: console.log("button clicked")
                            }
                            
                            Text {
                                id: vm_stop_control_txt
                                text: "Stopped"
                                font.family: "Helvetica"
                                font.pointSize: 9
                                color: "#616569"
                                width: vm_stop_control_bg.width
                                height: vm_stop_control_bg.height
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }    
                        }
                        DropShadow {
                            id: vm_stop_control_btn_up
                            anchors.fill: vm_stop_control_bg
                            horizontalOffset: 2
                            verticalOffset: 2
                            radius: 4.0
                            samples: 17
                            color: "#50000000"
                            source: vm_stop_control_bg
                            visible: false
                        }
                        InnerShadow {
                            id: vm_stop_control_btn_down
                            anchors.fill: vm_stop_control_bg
                            horizontalOffset: 3
                            verticalOffset: 3
                            radius: 4.0
                            samples: 17
                            color: "#80000000"
                            source: vm_stop_control_bg
                            visible: true
                        }
                    }    
                    Button {
                        id: vm_force_control
                        enabled: true
                        
                        background: Rectangle {
                            id: vm_force_control_bg
                            implicitWidth: 100
                            implicitHeight: 30
                            color: vm_force_control.down ? "#26282a" : "#31363b"
                            border.color: "#26282a"
                            border.width: 1
                            radius: 4.0

                            MouseArea {
                                anchors.fill: parent
                                onPressed: {
                                    vm_force_control_btn_up.visible = false
                                    vm_force_control_btn_down.visible = true
                                    vm_force_control_txt.text = "Killing VM"
                                    vm_force_control_txt.color = "#005374"
                                }
                                onReleased: {
                                    vm_force_control_txt.color = "#ffffff"
                                    vm_force_control_txt.text = "Force Stop"
                                    vm_force_control_btn_up.visible = true
                                    vm_force_control_btn_down.visible = false

                                    vm_stop_control.enabled = false
                                    vm_stop_control_txt.color = "#616569"
                                    vm_stop_control_txt.text = "Stopped"
                                    vm_stop_control_btn_up.visible = false
                                    vm_stop_control_btn_down.visible = true
                                    
                                    vm_config_control_txt.color = "#ffffff"
                                    vm_config_control_btn_up.visible = true
                                    vm_config_control_btn_down.visible = false
                                    vm_config_control.enabled = true

                                    vm_start_control_txt.text = "Start"
                                    vm_start_control_txt.color = "#ffffff"
                                    vm_start_control_btn_up.visible = true
                                    vm_start_control_btn_down.visible = false
                                    vm_start_control.enabled = true
                                }
                                //onClicked: console.log("button clicked")
                            }
                            
                            Text {
                                id: vm_force_control_txt
                                text: "Force Stop"
                                font.family: "Helvetica"
                                font.pointSize: 9
                                color: "#ffffff"
                                width: vm_force_control_bg.width
                                height: vm_force_control_bg.height
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }    
                        }
                        DropShadow {
                            id: vm_force_control_btn_up
                            anchors.fill: vm_force_control_bg
                            horizontalOffset: 2
                            verticalOffset: 2
                            radius: 4.0
                            samples: 17
                            color: "#50000000"
                            source: vm_force_control_bg
                            visible: true
                        }
                        InnerShadow {
                            id: vm_force_control_btn_down
                            anchors.fill: vm_force_control_bg
                            horizontalOffset: 3
                            verticalOffset: 3
                            radius: 4.0
                            samples: 17
                            color: "#80000000"
                            source: vm_force_control_bg
                            visible: false
                        }
                    }    
                    Button {
                        id: vm_config_control
                        enabled: true
                        
                        background: Rectangle {
                            id: vm_config_control_bg
                            implicitWidth: 100
                            implicitHeight: 30
                            color: vm_config_control.down ? "#26282a" : "#31363b"
                            border.color: "#26282a"
                            border.width: 1
                            radius: 4.0

                            MouseArea {
                                anchors.fill: parent
                                onPressed: {
                                    vm_config_control_btn_up.visible = false
                                    vm_config_control_btn_down.visible = true
                                    vm_config_control_txt.color = "#005374"
                                }
                                onReleased: {
                                    vm_config_control_txt.color = "#ffffff"
                                    vm_config_control_btn_up.visible = true
                                    vm_config_control_btn_down.visible = false
                                }
                            }
                            
                            Text {
                                id: vm_config_control_txt
                                text: "Configure"
                                font.family: "Helvetica"
                                font.pointSize: 9
                                color: "#ffffff"
                                width: vm_config_control_bg.width
                                height: vm_config_control_bg.height
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }    
                        }
                        DropShadow {
                            id: vm_config_control_btn_up
                            anchors.fill: vm_config_control_bg
                            horizontalOffset: 2
                            verticalOffset: 2
                            radius: 4.0
                            samples: 17
                            color: "#50000000"
                            source: vm_config_control_bg
                            visible: true
                        }
                        InnerShadow {
                            id: vm_config_control_btn_down
                            anchors.fill: vm_config_control_bg
                            horizontalOffset: 3
                            verticalOffset: 3
                            radius: 4.0
                            samples: 17
                            color: "#80000000"
                            source: vm_config_control_bg
                            visible: false
                        }
                    }    
                }
            }
        }
        
        InnerShadow {
            anchors.fill: vm_controls
            horizontalOffset: 3
            verticalOffset: 3
            radius: 10.0
            samples: 17
            color: "#80000000"
            source: vm_controls
        }
    }
    Process {
        id: host_os_variant_proc
        onReadyRead: host_os_variant.text = readAsString();
    }
    Timer {
        repeat: false
        triggeredOnStart: true
        running: true
        onTriggered: host_os_variant_proc.start("/usr/local/bin/host_os_variant.sh", [ ]);
    } 
    
    Process {
        id: process
        onReadyRead: vm_status_uptime.text = readAsString();
    }

    Timer {
        interval: 1000
        repeat: true
        triggeredOnStart: true
        running: true
        onTriggered: process.start("/usr/bin/sudo", [ "/usr/local/sbin/vm_uptime.sh", "Dystropia8" ]);
    } 
}        

