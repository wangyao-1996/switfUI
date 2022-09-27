//
//  LoginedModelFromHomeView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import SwiftUI
import Foundation

class LoginedModelFromHomeView: ObservableObject {
    @Published var profile: Profile = Profile(nickname: "桃子猪", avatarUrl: "timeline_profile_image", backgroundUrl: "timeline_profile_background")
    
    func updateLoginedAvatarUrl(url: String) {
        profile = Profile(nickname: profile.nickname, avatarUrl: url, backgroundUrl: profile.backgroundUrl)
    }
}
