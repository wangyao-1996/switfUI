//
//  ProfileHeaderView.swift
//  UI Component
//
//  Created by Jiaxin Pu on 2022/9/6.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        HStack{
            MyInfoPicture()
            VStack(alignment: .leading){
                Text("桃子猪")
                    .font(.title2)
                Text("微信号:XXXXXX")
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}


