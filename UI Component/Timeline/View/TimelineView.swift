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
                VStack{
                    TimeLineContent(profilePicture: "timeline_profile_image", userName: "桃子猪", timeLineContent: "编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程编程真有意思，我爱编程")
                }.padding(.leading)
            }
        }.ignoresSafeArea()
         .navigationTitle("朋友圈")
         .navigationBarTitleDisplayMode(.inline)
    }
}

struct TimeLineContent: View {
    var profilePicture:String
    var userName:String
    var timeLineContent:String
    var body: some View{
        HStack(alignment:.top){
            Image(profilePicture).resizable().frame(width: 50,height: 50).aspectRatio(contentMode:.fit)
            VStack(alignment: .leading){
                Text(userName).font(.headline)
                Spacer()
                Text(timeLineContent)
            }
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
