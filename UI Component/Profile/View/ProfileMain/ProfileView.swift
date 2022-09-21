//
//  ProfileView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
            List(){
                Section(){
                    ProfileHeaderViewForRatation()
                }
                Section(){
                    NavigationLink(
                        destination: {EmptyView()},
                        label: {
                            ListCell(imageName: "message.and.waveform", optionText: "服务")
                        })
                    NavigationLink(
                        destination: {EmptyView()},
                        label: {
                            ListCell(imageName: "shippingbox",optionText: "收藏")
                        })
                    NavigationLink(
                        destination: {EmptyView()},
                        label: {
                            ListCell(imageName: "menucard",optionText: "卡包")
                        })
                    NavigationLink(
                        destination: {SettingView()},
                        label: {
                            ListCell(imageName: "gearshape",optionText: "设置")
                        })
                }
            }
            .navigationTitle("我的")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ListCell : View {
    
    var imageName : String!
    var optionText : String!
    
    var body: some View {
        HStack{
            Image(systemName: imageName)
            Text(optionText)
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()//.environment(\.horizontalSizeClass, .compact)
    }
}
