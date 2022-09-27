//
//  getdate.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import Foundation

func getDate() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
    
    return dateFormatter.string(
        from: Date()
            .addingTimeInterval(
                TimeInterval(
                    NSTimeZone.system.secondsFromGMT())))
}
