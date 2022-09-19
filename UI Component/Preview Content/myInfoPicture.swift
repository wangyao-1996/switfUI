//
//  myInfoPicture.swift
//  UI Component
//
//  Created by wangyao on 2022/9/18.
//

import Foundation
import SwiftUI

struct MyInfoPicture: View {
    var body: some View{
        Image("timeline_profile_image").resizable().aspectRatio(contentMode:.fit).frame(width: 50,height: 50,alignment: .topLeading)
    }
}
