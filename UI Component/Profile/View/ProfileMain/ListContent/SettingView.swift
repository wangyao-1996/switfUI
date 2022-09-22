//
//  SettingView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/21.
//

import Foundation
import SwiftUI

struct SettingView: View {
    var body: some View{
        ScrollViewReader{ reader in
            List{
                Text("设置").id(1)
                ForEach(0..<20){_ in
                    ListCell(imageName: "gearshape", optionText: "设置")
                }
                Button(action: {
                    reader
                    .scrollTo(1, anchor: .center)}){
                        Text("Back To Top")
                    }
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
