//
//  CurrentTimeView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import SwiftUI

struct CurrentTimeView: View {
    @StateObject var timeModel = Model()
    var body: some View {
        VStack{
            Button{
                timeModel.date = getDate()
            } label: {
                Text("刷新时间")
            }
            
            Text("当前时间：\(timeModel.date)")
        }
    }
}

struct CurrentTimeView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentTimeView()
    }
}
