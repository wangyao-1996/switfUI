//
//  GameView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import SwiftUI

struct GameView: View {
    @State var date: String
    
    init(date:String) {
        self.date = getDate()
    }
    
    var body: some View {
        VStack{
            VStack{
                Button{
                    date = getDate()
                } label: {
                    Text("刷新时间")
                }
                
                Text("当前时间：\(date)")
            }
            
            VStack{
                Text("a")
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(date: getDate())
    }
}
