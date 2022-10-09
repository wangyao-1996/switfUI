//
//  TimelineView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct TimelineView: View {
    var body: some View {
        ScrollView(){
            VStack(alignment: .leading){
                TimelineHeaderView()
                VStack(alignment: .leading){
                    TimeLineContent(profilePicture: "timeline_profile_image", userName: "桃子猪", timeLineTextContent: "编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程")
                    TimeLineContent(profilePicture: "timeline_profile_image_tu", userName: "草莓兔", timeLineTextContent: "你这个年纪睡得着觉？")
                    TimeLineContent(profilePicture: "timeline_profile_image", userName: "桃子猪", timeLineTextContent: "编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程")
                    TimeLineContent(profilePicture: "timeline_profile_image_tu", userName: "草莓兔", timeLineTextContent: "你这个年纪睡得着觉？",likeArray: ["草莓兔","芒果鹿","芒果鹿","芒果鹿","芒果鹿","芒果鹿","芒果鹿"])
                    TimeLineContent(profilePicture: "timeline_profile_image", userName: "桃子猪", timeLineTextContent: "编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程")
                    TimeLineContent(profilePicture: "timeline_profile_image_tu", userName: "草莓兔", timeLineTextContent: "你这个年纪睡得着觉？")
                    TimeLineContent(profilePicture: "timeline_profile_image", userName: "桃子猪", timeLineTextContent: "编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程")
                    TimeLineContent(profilePicture: "timeline_profile_image_tu", userName: "草莓兔", timeLineTextContent: "你这个年纪睡得着觉？")
                    TimeLineContent(profilePicture: "timeline_profile_image", userName: "桃子猪", timeLineTextContent: "编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程",timeLineImageContent: "timeline_profile_image_lu_photo1")
                    TimeLineContent(profilePicture: "timeline_profile_image_tu", userName: "草莓兔", timeLineTextContent: "你这个年纪睡得着觉？",likeArray: ["草莓兔"])
                }
                .padding(.horizontal)
            }
        }.ignoresSafeArea()
         .navigationTitle("朋友圈")
         .navigationBarTitleDisplayMode(.inline)
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
