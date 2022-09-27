//
//  TimeLineHeaderView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/22.
//

import SwiftUI

struct TimelineHeaderView: View{
    @EnvironmentObject var defaultProfileModel: LoginedModelFromHomeView
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            Image("timeline_profile_background")
                .resizable()
                .frame(width: UIScreen.main.bounds.width,height: 300)
                .aspectRatio(contentMode: .fit).padding(.bottom)
            
            HStack{
                Text(defaultProfileModel.profile.nickname)
                    .font(.title)
                    .foregroundColor(.white)
                Image(defaultProfileModel.profile.avatarUrl)
                    .resizable()
                    .frame(width: 100,height: 100)
                    .aspectRatio(contentMode:.fit)
            }
            .padding(.trailing)
        }
    }
}


struct TimelineHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineHeaderView().environmentObject(LoginedModelFromHomeView())
    }
}
