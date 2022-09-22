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
    @State var orientation: UIDeviceOrientation = .portrait
    var body: some View {
        HStack{
            Image("timeline_profile_image")
                .resizable().circleForRation()
            VStack(alignment: .leading){
                Text("桃子猪桃子猪桃子猪桃子猪桃子猪桃子猪桃子猪桃子猪桃子猪桃子猪")
                    .font(.title2)
                    .lineLimit(2)
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
        ProfileHeaderViewForRatation()//.environment(\.horizontalSizeClass, .regular)
    }
}
