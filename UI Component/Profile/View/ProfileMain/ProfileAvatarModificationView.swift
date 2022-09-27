//
//  ProfileAvatarModificationView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import SwiftUI

struct ProfileAvatarModificationView: View {
    @EnvironmentObject var defaultProfileModel: LoginedModelFromHomeView
    @State var isShowChangeProfileOption: Bool = false
    var body: some View {
        VStack{
            Spacer()
            Image(defaultProfileModel.profile.avatarUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
        .toolbar{
            Button {
                isShowChangeProfileOption = true
            }label: {
                Image(systemName: "ellipsis")
            }
            .actionSheet(isPresented: $isShowChangeProfileOption) {
                ActionSheet(title: Text("更多"),
                            buttons: [.default(Text("修改头像")){
                    defaultProfileModel.updateLoginedAvatarUrl(url: "timeline_profile_image_tu")
                },.cancel()])
            }
        }
    }
}

struct ProfileAvatarModificationView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAvatarModificationView().environmentObject(LoginedModelFromHomeView())
    }
}
