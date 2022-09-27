//
//  ExplorationView.swift
//  UI Component
//
//  Created by Jian on 2022/1/21.
//

import SwiftUI

struct ExplorationView: View {
    var body: some View {
        NavigationView(){
            List(){
                NavigationLink(destination: {
                    TimelineView()
                }, label: {
                    ListLabelView(TextName: "朋友圈",
                                  Icon: "circle.circle.fill")})
                NavigationLink(destination: {
                    EmptyView()
                }, label: {
                    ListLabelView(TextName: "游戏",
                                  Icon: "gamecontroller.fill")})
                NavigationLink(destination: {
                    EmptyView()
                }, label: {
                    ListLabelView(TextName: "小程序",
                                  Icon: "circle.dashed")})
            }
            .navigationTitle("发现")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ListLabelView: View {
    var TextName: String
    var Icon: String
    var body: some View {
        HStack{
            Image(systemName: Icon).foregroundColor(.blue)
            Text(TextName)
        }
    }
}

struct ExplorationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorationView()
    }
}
