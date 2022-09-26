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
                    TimelineContentView()
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
