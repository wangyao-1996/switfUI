//
//  StepPlateView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import SwiftUI

struct StepPlateView: View {
    
    init(){
        print("Creat StepPlateView")
    }
    
    @StateObject var stepModel = Model()
    var body: some View {
        VStack {
            Button{
                stepModel.step += 1
            } label: {
                Text("+1")
            }
            
            Text("步数：\(stepModel.step)")
        }
    }
}

struct StepPlateView_Previews: PreviewProvider {
    static var previews: some View {
        StepPlateView()
    }
}
