//
//  ProfileView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileView: View {
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
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.orange,
                                lineWidth: 4)
            }
            .shadow(radius: 7)
            .aspectRatio(contentMode: .fit)
            .frame(width: 50,height: 50,alignment: .topLeading)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
