//
//  ProfileHeaderView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileHeaderView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    @EnvironmentObject var defaultProfileModel: LoginedModelFromHomeView
    var body: some View {
        HStack{
            Image(defaultProfileModel.profile.avatarUrl)
                .resizable().circle()
            VStack(alignment: .leading){
                Text(defaultProfileModel.profile.nickname)
                    .font(.title2)
                    .lineLimit(2)
                if horizontalSizeClass == .regular{
                    VStack(alignment: .leading){
                        HeaderView()
                    }.lineLimit(1)
                } else {
                    HStack{
                        HeaderView()
                    }
                }
            }
        }
    }
}

extension Image {
    func circle() -> some View {
        modifier(CircleModifier())
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView().environmentObject(LoginedModelFromHomeView())//.environment(\.horizontalSizeClass, .regular)
    }
}


