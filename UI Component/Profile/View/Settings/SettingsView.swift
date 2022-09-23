//
//  SettingsView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/8.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ScrollViewReader{ reader in
            List{
                Text("设置").id(1)
                ForEach(0..<20){_ in
                    ListCell(imageName: "gearshape",optionText: "设置")
                }
                Button(action: {
                    reader
                    .scrollTo(1, anchor: .center)},
                       label: {Text("Back To Top")})
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
