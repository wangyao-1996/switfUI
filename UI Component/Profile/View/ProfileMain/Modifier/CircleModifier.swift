//
//  CircleModifier.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import SwiftUI

struct CircleModifier : ViewModifier{
    @State var lineWidth = CGFloat(4)
    @State var shadowRadius = CGFloat(7)
    @State var imageSize : [CGFloat] = [50 , 50]
    
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.orange,
                                lineWidth: lineWidth)
            }
            .shadow(radius: shadowRadius)
            .aspectRatio(contentMode: .fit)
            .frame(width: imageSize[0],height: imageSize[1],alignment: .topLeading)
            .animation(.default.repeatForever(), value: lineWidth)
            .animation(.default.repeatForever(), value: shadowRadius)
            //.animation(.default.repeatForever(), value: imageSize)
            .onAppear{
                lineWidth = 2
                shadowRadius = 3
                //imageSize = [30,30]
            }
    }
}
