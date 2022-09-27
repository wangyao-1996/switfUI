//
//  ProfileView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileView: View {
    @State var isAlertShow: Bool = false
    var body: some View {
        NavigationView{
            List(){
                Section(){
                    NavigationLink(destination: {EmptyView()}){
                        ProfileHeaderViewForRatation(userName: "桃子猪")
                    }
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
                        destination: {CardBagView()},
                        label: {
                            ListCell(imageName: "menucard",optionText: "卡包")
                        })
                    NavigationLink(
                        destination: {
                            SettingView()
                                .onAppear{
                                    isAlertShow = true
                                }
                                .alert("欢迎进入设置页面",isPresented: $isAlertShow){
                                    Button("确定",role: .cancel){}
                                }},
                        label: {
                            ListCell(imageName: "gearshape",optionText: "设置")
                        })
                }
            }
            .navigationTitle("我的")
            .navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ListCell: View {
    
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
