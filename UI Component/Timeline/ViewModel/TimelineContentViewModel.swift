//
//  TimelineContentViewModel.swift
//  UI Component
//
//  Created by wangyao on 2022/9/26.
//

import Foundation

class TimelineContentViewModel: ObservableObject {
    @Published var contents: [TimelineContent] = []
    
    func loadData(){
        contents.removeAll()
        
        contents.append(TimelineContent(id: 4,
                                        nickname: "桃子猪",
                                        avatarUrl: "timeline_profile_image",
                                        type: .singleMessage(message: "不是我矫情,这年呐~,就是得和家人一起过才有味道."),
                                        likes: []))
        contents.append(TimelineContent(id: 3,
                                        nickname: "草莓🐰",
                                        avatarUrl: "timeline_profile_image_tu",
                                        type: .singleMessage(message: "今年的支付宝开始集五福啦!去年只中了8.88, 希望今年可以多加几个零呢!"),
                                        likes: []))
        contents.append(TimelineContent(id: 2,
                                        nickname: "桃子猪",
                                        avatarUrl: "timeline_profile_image",
                                        type: .singleMessage(message: "好希望西安疫情早点结束, 我可以早一点回家过年."),
                                        likes: []))
        contents.append(TimelineContent(id: 1,
                                        nickname: "芒果🦒",
                                        avatarUrl: "timeline_profile_image_lu",
                                        type: .photoAndMessage(photo: "timeline_profile_image_lu_photo1", message: "草莓兔最近移情别恋, 都好久不和我在一起玩了. 哼~生气."),
                                        likes: ["草莓🐰"]))
    }
}
