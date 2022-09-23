//
//  stringArrayToString.swift
//  UI Component
//
//  Created by wangyao on 2022/9/23.
//

import Foundation

func stringArrayToString(_ likeArray: [String]) -> String {
    var likeString: String = ""
    for LikeName in likeArray{
        if likeString == "" {
            likeString = "\(LikeName)"
        } else {
            likeString = "\(likeString),\(LikeName)"
        }
    }
    return likeString
}
