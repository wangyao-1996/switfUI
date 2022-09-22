//
//  TimeLineHeaderView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/22.
//

import SwiftUI

struct TimelineHeaderView: View{
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image("timeline_profile_background").frame(width: UIScreen.main.bounds.width)
            
            HStack{
                Text("桃子猪").font(.title).foregroundColor(.white)
                Image("timeline_profile_image").resizable().frame(width: 100,height: 100).aspectRatio(contentMode:.fit)
            }
        }
    }
}


struct TimelineHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineHeaderView()
    }
}
