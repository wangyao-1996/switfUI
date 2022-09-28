//
//  GameView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import SwiftUI

struct GameView: View {
    @State var date: Date = .init()
    
    init(){
        print("Creat GameView")
    }
    
    var body: some View {
        VStack{
            Spacer()
            VStack{
                Button{
                    date = Date()
                } label: {
                    Text("刷新时间")
                }
                Text("当前时间：\(getDate(date))")
            }
            Spacer()
            StepPlateView()
            Spacer()
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
