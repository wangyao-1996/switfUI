//
//  GameView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import SwiftUI

struct GameView: View {
    
    var body: some View {
        VStack{
            Spacer()
            CurrentTimeView()
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
