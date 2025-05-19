import SwiftUI

struct ContentView: View {
    @State private var isOn = false
    let title: String
    let action: () -> Void
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("검색", text: .constant(""))
                    }
                }
                Section {
                    VStack {
                        HStack(spacing: 10) {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.gray)
                            
                            VStack(alignment: .leading) {
                                Text("홍길동")
                                    .font(.title3)
                                    .bold()
                                Text("Apple 계정, iCloud+ 등")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Button {
                                action()
                            } label: {
                                Image(systemName: title)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }

                Section {
                    HStack {
                        Image(systemName: "airpods.pro")
                            .foregroundColor(.gray)
                        Text("AirPods")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "airplane")
                            .foregroundColor(.orange)
                        Toggle("에어플레인 모드", isOn: $isOn)
                    }
                    HStack {
                        Image(systemName: "wifi")
                            .foregroundColor(.blue)
                        Text("Wi-Fi")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.blue)
                        Text("Bluetooth")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "antenna.radiowaves.left.and.right")
                            .foregroundColor(.green)
                        Text("셀룰러")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "personalhotspot")
                            .foregroundColor(.green)
                        Text("개인용 핫스팟")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "battery.100percent")
                            .foregroundColor(.green)
                        Text("배터리")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "gear")
                            .foregroundColor(.gray)
                        Text("일반")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "accessibility")
                            .foregroundColor(.blue)
                        Text("손쉬운 사용")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("검색")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.blue)
                        Text("동작 버튼")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "sun.max.fill")
                            .foregroundColor(.blue)
                        Text("디스플레이 및 밝기")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.mint)
                        Text("배경화면")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.black)
                        Text("스탠바이")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "switch.2")
                            .foregroundColor(.gray)
                        Text("제어 센터")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "camera.fill")
                            .foregroundColor(.gray)
                        Text("카메라")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "apps.iphone")
                            .foregroundColor(.blue)
                        Text("홈 화면 및 앱 보관함")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "apple.intelligence")
                        Text("Apple Intelligence 및 Siri")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "bell.badge.fill")
                            .foregroundColor(.red)
                        Text("알림")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "speaker.wave.3.fill")
                            .foregroundColor(.red)
                        Text("사운드 및 햅틱")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "moon.fill")
                            .foregroundColor(.purple)
                        Text("집중 모드")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "hourglass")
                            .foregroundColor(.purple)
                        Text("스크린 타임")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "faceid")
                            .foregroundColor(.green)
                        Text("Face ID 및 암호")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "sos")
                            .foregroundColor(.red)
                        Text("긴급 구조 요청")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "hand.raised.fill")
                            .foregroundColor(.blue)
                        Text("개인정보 보호 및 보안")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.gray)
                        Text("지갑 및 Apple Pay")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.blue)
                        Text("Game Center")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image(systemName: "icloud.fill")
                            .foregroundColor(.blue)
                        Text("iCloud")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "questionmark.circle")
                        Text("앱")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "hammer.fill")
                        Text("개발자")
                        Spacer()
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationBarTitle("설정")
        }
    }
}

#Preview {
    ContentView(title: "chevron.right") {
        print("개발중...")
    }
}
