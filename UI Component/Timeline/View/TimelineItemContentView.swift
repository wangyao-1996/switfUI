//
//  TimelineItemContent.swift
//  UI Component
//
//  Created by wangyao on 2022/9/26.
//

import Foundation
import SwiftUI

struct TimelineItemContentView: View {
    
    @StateObject var viewModel: TimelineContentItemViewModel
    
    init(timelineContent: TimelineContent) {
        _viewModel = StateObject(wrappedValue: TimelineContentItemViewModel(timelineContent: timelineContent))
    }
    
    var body: some View{
        HStack(alignment:.top){
            Image(viewModel.profilePicture)
                .resizable()
                .frame(width: 50,height: 50)
                .aspectRatio(contentMode:.fit)
            VStack(alignment: .leading){
                Text(viewModel.userName)
                    .font(.headline)
                Spacer()
                Text(viewModel.timeLineTextContent)
                if viewModel.timeLineImageContent != "" {
                    Spacer()
                    Image(viewModel.timeLineImageContent)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Spacer()
                
                HStack(alignment: .top){
                    Button(action:{
                        viewModel.changeLikeLabelStyle()
                    }){
                        Image(systemName: viewModel.likeIcon)
                            .foregroundColor(.red)
                    }
                    Text(stringArrayToString(viewModel.likeArray))
                        .foregroundColor(.white)
                    Spacer()
                }
                .background(LikeLabelBackGround())
            }
        }
    }
}

struct TimeLineItemContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineItemContentView(timelineContent: TimelineContent(id: 1, nickname: "22", avatarUrl: "timeline_profile_image_tu", type: .photoAndMessage(photo: "timeline_profile_image_lu_photo1", message: "aaa"), likes: []))
    }
}
