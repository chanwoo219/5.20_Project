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
                        ZStack{
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                            Image(systemName: "airpods.pro")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.orange)
                            Image(systemName: "airplane")
                                .foregroundColor(.white)
                        }
                        Toggle("에어플레인 모드", isOn: $isOn)
                    }
                    HStack {
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.blue)
                            Image(systemName: "wifi")
                                .foregroundColor(.white)
                        }
                        Text("Wi-Fi")
                        Spacer()
                        Text("Public WiFi Free")
                            .foregroundColor(.gray)
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        Image("bluetooth")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("Bluetooth")
                        Spacer()
                        Text("켬")
                            .foregroundColor(.gray)
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.green)
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .foregroundColor(.white)
                        }
                        Text("셀룰러")
                        Spacer()
                        Text("끔")
                            .foregroundColor(.gray)
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray)
                        }
                    }
                    HStack {
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.green)
                            Image(systemName: "personalhotspot")
                                .resizable()
                                .frame(width: 20, height: 10)
                                .foregroundColor(.white)
                        }
                        Text("개인용 핫스팟")
                            .foregroundColor(.gray.opacity(0.5))
                        Spacer()
                        Text("끔")
                            .foregroundColor(.gray.opacity(0.5))
                        Button {
                            action()
                        } label: {
                            Image(systemName: title)
                                .foregroundColor(.gray.opacity(0.5))
                        }
                    }
                    HStack {
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.green)
                            Image(systemName: "battery.100percent")
                                .resizable()
                                .frame(width: 20, height: 10)
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                            Image(systemName: "gear")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.blue)
                            Image(systemName: "accessibility")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                        }
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
                        Image("button")
                            .resizable()
                            .frame(width: 25, height: 25)
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.blue)
                            Image(systemName: "sun.max.fill")
                                .foregroundColor(.white)
                        }
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
                        Image("screen")
                            .resizable()
                            .frame(width: 25, height: 25)
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
                        Image("stanby")
                            .resizable()
                            .frame(width: 25, height: 25)
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                            Image(systemName: "switch.2")
                                .foregroundColor(.white)
                    }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                            Image(systemName: "camera.fill")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.blue)
                            Image(systemName: "apps.iphone")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                            Image(systemName: "apple.intelligence")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.red)
                            Image(systemName: "bell.badge.fill")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.red)
                            Image(systemName: "speaker.wave.3.fill")
                                .resizable()
                                .frame(width: 20, height: 15)
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.indigo)
                            Image(systemName: "moon.fill")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.indigo)
                            Image(systemName: "hourglass")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.green)
                            Image(systemName: "faceid")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.red)
                            Image(systemName: "sos")
                                .resizable()
                                .frame(width: 20, height: 10)
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.blue)
                            Image(systemName: "hand.raised.fill")
                                .foregroundColor(.white)
                        }
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
                        Image("wallet")
                            .resizable()
                            .frame(width: 25, height: 25)
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
                        Image("center")
                            .resizable()
                            .frame(width: 25, height: 25)
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                            Image(systemName: "icloud.fill")
                                .foregroundColor(.blue)
                        }
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
                        ZStack{
                            Image(systemName: "square.fill")
                                .resizable()
                                .foregroundColor(.purple)
                                .frame(width: 25, height: 25)
                                Image(systemName: "square.grid.3x3.fill")
                                .foregroundColor(.white)
                        }
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
                        ZStack {
                            Image(systemName: "square.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                            Image(systemName: "hammer.fill")
                                .foregroundColor(.white)
                        }
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
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView(title: "chevron.right") {
        print("개발중...")
    }
}
