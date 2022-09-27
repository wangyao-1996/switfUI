//
//  CardBagView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/26.
//

import Foundation
import SwiftUI
enum Theme: String {
    case space
    case sky
}

class ThemeEnvironmentKey: EnvironmentKey {
    static var defaultValue: Theme = .sky
}

extension EnvironmentValues {
    var theme: Theme {
        get{
            self[ThemeEnvironmentKey.self]
        }
        set{
            self[ThemeEnvironmentKey.self] = newValue
        }
    }
}

struct CardBagView: View{
    @State var cardNumber: String = ""
    @State var theme: Theme = .sky
    
    var body: some View{
        VStack(alignment: .center){
            Text("当前的卡片号码:\(cardNumber)")
            TextField("请输入", text: $cardNumber)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .foregroundColor(avatarColor())
            Text("欢迎使用\(theme.rawValue)主题")
            //.border(.cyan)
            //.cornerRadius(3)
        }
        .toolbar{
            Button {
                theme = theme == .sky ? .space : .sky
            } label: {
                Text("更改Theme")
            }
        }
        .padding(.horizontal, 40)
    }
    
    func avatarColor() -> Color {
        switch theme {
        case .sky:
               return .blue
        case .space:
               return .black
        }
    }
}

struct CardBagView_Previews: PreviewProvider {
    static var previews: some View {
        CardBagView()
    }
}
