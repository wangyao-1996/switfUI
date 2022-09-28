//
//  getdate.swift
//  UI Component
//
//  Created by wangyao on 2022/9/27.
//

import Foundation

func getDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    //dateFormatter.locale = Locale(identifier: "zh_CN" )
    dateFormatter.timeZone = TimeZone.current
    dateFormatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
    
    return dateFormatter.string(from: date)
}
