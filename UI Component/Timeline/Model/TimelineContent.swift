//
//  TimelineContent.swift
//  UI Component
//
//  Created by wangyao on 2022/9/26.
//

import Foundation

enum TimelineContentType {
    case singleMessage(message: String)
    case photoAndMessage(photo: String, message: String?)
}

struct TimelineContent: Identifiable {
    let id: Int
    let nickname: String
    let avatarUrl: String
    let type: TimelineContentType
    let likes: [String]
}
