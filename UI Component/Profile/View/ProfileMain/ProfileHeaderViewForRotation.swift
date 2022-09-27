//
//  ProfileHeaderViewForRotation.swift
//  UI Component
//
//  Created by wangyao on 2022/9/21.
//

import Foundation
import SwiftUI

struct RotateViewModifier: ViewModifier {
    let action: (UIDeviceOrientation) -> Void
    func body(content: Content) -> some View {
        content
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)){ _ in
                action(UIDevice.current.orientation)
            }
    }
}

extension View {
    func onRate(perform action: @escaping (UIDeviceOrientation)->Void)->some View{
        modifier(RotateViewModifier(action: action))
    }
}

struct ProfileHeaderViewForRatation: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @Environment(\.scenePhase) var scenePhase
    @EnvironmentObject var defaultProfileModel: LoginedModelFromHomeView
    @State var userNameColor: Color = .white
    @State var orientation: UIDeviceOrientation = .portrait
    @State var userName: String = ""
    var body: some View {
        HStack{
            Image(defaultProfileModel.profile.avatarUrl)
                .resizable().circleForRation()
            VStack(alignment: .leading){
                Text(defaultProfileModel.profile.nickname)
                    .font(.title2)
                    .lineLimit(2)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                if horizontalSizeClass == .regular{
                    VStack(alignment: .leading){
                        if orientation.isLandscape{
                            Text("微信号:XXXXXXXXXXXXXX")
                                .foregroundColor(Color.gray)
                                .fixedSize(horizontal: true, vertical: false)
                            Text("个人签名:我是一个桃子猪我是一个桃子猪我是一个桃子猪")
                                .foregroundColor(Color.orange)
                                .lineLimit(1)
                            Text("个人爱好:写代码")
                        } else {
                            Text("微信号:XXXXXXXXXXXXXX")
                                .foregroundColor(Color.gray)
                                .fixedSize(horizontal: true, vertical: false)
                            Text("个人签名:我是一个桃子猪我是一个桃子猪我是一个桃子猪")
                                .foregroundColor(Color.orange)
                                .lineLimit(1)
                        }
                    }.lineLimit(1)
                } else {
                    HStack{
                        if orientation.isLandscape{
                            Text("微信号:XXXXXXXXXXXXXX")
                                .foregroundColor(Color.gray)
                                .fixedSize(horizontal: true, vertical: false)
                            Text("个人签名:我是一个桃子猪我是一个桃子猪我是一个桃子猪")
                                .foregroundColor(Color.orange)
                                .lineLimit(1)
                            Text("个人爱好:写代码")
                        } else {
                            Text("微信号:XXXXXXXXXXXXXX")
                                .foregroundColor(Color.gray)
                                .fixedSize(horizontal: true, vertical: false)
                            Text("个人签名:我是一个桃子猪我是一个桃子猪我是一个桃子猪")
                                .foregroundColor(Color.orange)
                                .lineLimit(1)
                        }
                    }
                }
            }
        }.onRate{ newOrientation in
            orientation = newOrientation
        }
        .onChange(of: scenePhase){ TextChangeValue in
            switch TextChangeValue{
            case .active:
                userName = defaultProfileModel.profile.nickname
            case .inactive :
                userName = "用户昵称保密"
            default: break
        }
        }
    }
}

extension Image {
    func circleForRation() -> some View {
        modifier(CircleModifier())
    }
}

struct CircleModifierForRation : ViewModifier{
    @State var lineWidth = CGFloat(4)
    @State var shadowRadius = CGFloat(7)
    @State var imageSize : [CGFloat] = [50 , 50]
    
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.orange,
                                lineWidth: lineWidth)
            }
            .shadow(radius: shadowRadius)
            .aspectRatio(contentMode: .fit)
            .frame(width: imageSize[0],height: imageSize[1],alignment: .topLeading)
            .animation(.default.repeatForever(), value: lineWidth)
            .animation(.default.repeatForever(), value: shadowRadius)
            //.animation(.default.repeatForever(), value: imageSize)
            .onAppear{
                lineWidth = 2
                shadowRadius = 3
                //imageSize = [30,30]
            }
    }
}

struct ProfileHeaderViewForRation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderViewForRatation().environmentObject(LoginedModelFromHomeView())//.environment(\.horizontalSizeClass, .regular)
    }
}
