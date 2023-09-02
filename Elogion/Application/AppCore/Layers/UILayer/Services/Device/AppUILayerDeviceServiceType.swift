//
//  AppUILayerDeviceServiceType.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import Foundation

enum FeedbackType {
    case success, failure
}

protocol AppUILayerDeviceServiceType: AnyObject {
    var screenSize: CGRect { get }
    var topPaddingValue: CGFloat { get }
    var bottomPaddingValue: CGFloat { get }
    
    func generateFeedback(with type: FeedbackType)
    func vibrate()
}
