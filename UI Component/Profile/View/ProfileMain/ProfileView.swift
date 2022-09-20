//
//  ProfileView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
       Text("ProfilView")
            }
        }
    
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        List(){
            Section(){
                ProfileHeaderView()
            }
            Section(){
                HStack{
                    Image(systemName: "message.and.waveform")
                    Text("服务")
                }
                HStack{
                    Image(systemName: "shippingbox")
                    Text("收藏")
                }
                HStack{
                    Image(systemName: "menucard")
                    Text("卡包")
                }
                HStack{
                    Image(systemName: "gearshape")
                    Text("设置")
                }
            }
        }
    }
}
