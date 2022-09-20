//
//  ProfileHeaderView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        HStack{
            Image("timeline_profile_image")
                .resizable().circle()
            VStack(alignment: .leading){
                Text("桃子猪")
                    .font(.title2)
                Text("微信号:XXXXXX")
                    .foregroundColor(Color.gray)
            }
        }
    }
}

extension Image {
    func circle() -> some View {
        modifier(CircleModifier())
    }
}

struct CircleModifier : ViewModifier{
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
            .animation(.default.repeatForever(), value: imageSize)
            .onAppear{
                lineWidth = 2
                shadowRadius = 3
                imageSize = [30,30]
            }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}


