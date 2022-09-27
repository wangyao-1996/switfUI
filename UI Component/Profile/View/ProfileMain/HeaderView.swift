//
//  HeaderView.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    var body: some View {
        Text("微信号:XXXXXXXXXXXXXX")
            .foregroundColor(Color.gray)
            .fixedSize(horizontal: true, vertical: false)
        Text("个人签名:我是一个桃子猪我是一个桃子猪我是一个桃子猪")
            .foregroundColor(Color.orange)
            .lineLimit(1)
    }
}
