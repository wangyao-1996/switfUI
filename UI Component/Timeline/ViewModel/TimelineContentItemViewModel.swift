//
//  TimeLineContentItemViewModel.swift
//  UI Component
//
//  Created by wangyao on 2022/9/26.
//

import Foundation
import SwiftUI

class TimelineContentItemViewModel: ObservableObject {
    @Published var likeArray: [String] = []
    @Published private var isMyLike: Bool = false
    @Published var likeIcon: String = "heart"
    @Published var profilePicture: String = ""
    @Published var userName: String = ""
    @Published var timeLineTextContent: String = ""
    @Published var timeLineImageContent:String = ""
    
    init(timelineContent: TimelineContent){
        likeArray = timelineContent.likes
        profilePicture = timelineContent.avatarUrl
        userName = timelineContent.nickname
        
        switch timelineContent.type{
        case .photoAndMessage(photo: let photo, message: let message):
            timeLineTextContent = message ?? ""
            timeLineImageContent = photo
            break
            
        case .singleMessage(message: let messgae):
            timeLineTextContent = messgae
            break
        }
    }
    
    func changeLikeLabelStyle() {
        if isMyLike == false {
            likeIcon = "heart.fill"
            isMyLike = !isMyLike
            likeArray.append("桃子猪")
        } else {
            likeIcon = "heart"
            isMyLike = !isMyLike
            likeArray.remove(at:(likeArray.firstIndex(of: "桃子猪"))!)
        }
    }
    
    func getLaberBackgroundColor() -> Color {
        return likeArray.isEmpty ? Color.white : Color.gray
    }
}
