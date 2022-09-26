//
//  CardBagView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/26.
//

import Foundation
import SwiftUI

struct CardBagView: View{
    @State var cardNumber: String = ""
    
    var body: some View{
        VStack(alignment: .center){
            Text("当前的卡片号码:\(cardNumber)")
            TextField("请输入", text: $cardNumber).padding(5).border(.cyan).cornerRadius(3)
        }.padding(.horizontal, 40)
    }
}

struct CardBagView_Previews: PreviewProvider {
    static var previews: some View {
        CardBagView()
    }
}
