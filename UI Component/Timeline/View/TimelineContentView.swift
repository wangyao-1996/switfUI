//
//  TimelineContentView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/26.
//

import SwiftUI

struct TimelineContentView: View {
    @StateObject var viewModel: TimelineContentViewModel = .init()
    
    var body: some View{
        VStack{
            VStack{
                ForEach(viewModel.contents) {
                    TimelineItemContentView(timelineContent: $0)
                }
            }.onAppear(
                perform: {
                    viewModel.loadData()
                })
        }
    }
}


struct TimelineContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineContentView()
    }
}
