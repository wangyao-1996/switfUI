//
//  RotateView+Modifier.swift
//  UI Component
//
//  Created by wangyao on 2022/9/23.
//

import Foundation
import SwiftUI

struct RotateViewModifier: ViewModifier {
    let action: (UIDeviceOrientation) -> Void
    func body(content: Content) -> some View {
        content
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)){ _ in
                action(UIDevice.current.orientation)
            }
    }
}
