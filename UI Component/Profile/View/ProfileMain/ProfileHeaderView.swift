//
//  ProfileHeaderView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import Foundation
import SwiftUI

struct ProfileHeaderView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    @State var orientation: UIDeviceOrientation = .portrait
    var userName: String = "a"
    var body: some View {
        HStack{
            Image("timeline_profile_image")
                .resizable()
                .circle()
            VStack(alignment: .leading){
                Text(userName)
                    .font(.title2)
                    .lineLimit(2)
                if horizontalSizeClass == .regular{
                    VStack(alignment: .leading){
                        userInfo()
                        if orientation.isLandscape{
                            Text("个人爱好:写代码")
                        }
                    }.lineLimit(1)
                } else {
                    HStack{
                        userInfo()
                        if orientation.isLandscape{
                            Text("个人爱好:写代码")
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
    func circle() -> some View {
        modifier(CircleModifier())
    }
}

extension View {
    func onRate(perform action: @escaping (UIDeviceOrientation)->Void)->some View{
        modifier(RotateViewModifier(action: action))
    }
}

struct userInfo: View {
    var body: some View {
        Text("微信号:XXXXXXXXXXXXXX")
            .foregroundColor(Color.gray)
            .fixedSize(horizontal: true, vertical: false)
        Text("个人签名:我是一个桃子猪我是一个桃子猪我是一个桃子猪")
            .foregroundColor(Color.orange)
            .lineLimit(1)
    }
}

struct ProfileHeaderViewForRation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()//.environment(\.horizontalSizeClass, .regular)
    }
}
