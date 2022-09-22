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
            TimelineHeaderView()
            VStack{
                Text("1")
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
