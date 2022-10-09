//
//  TimelineContentView.swift
//  UI Component
//
//  Created by wangyao on 2022/10/9.
//

import Foundation
import SwiftUI

struct TimeLineContent: View {
    var profilePicture: String
    var userName: String
    var timeLineTextContent: String
    var timeLineImageContent: String?
    @State var likeArray: [String] = []
    @State private var likeIcon: String = "heart"
    @State private var isMyLike: Bool = false
    
    fileprivate func changeLikeLabelStyle() {
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
    
    var body: some View{
        HStack(alignment:.top){
            Image(profilePicture).resizable().frame(width: 50,height: 50).aspectRatio(contentMode:.fit)
            VStack(alignment: .leading){
                    Text(userName).font(.headline)
                    Spacer()
                    Text(timeLineTextContent)
                    if timeLineImageContent != nil {
                        Spacer()
                        Image(timeLineImageContent!).resizable().aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                HStack(alignment: .top){
                        Button(action:{
                            changeLikeLabelStyle()
                        }){
                            Image(systemName: likeIcon).foregroundColor(.red)
                        }
                        Text(stringArrayToString(likeArray)).foregroundColor(.white)
                        Spacer()
                    }
                    .background(likeArray.isEmpty ? Color.white : Color.gray)
            }
        }
    }
}

