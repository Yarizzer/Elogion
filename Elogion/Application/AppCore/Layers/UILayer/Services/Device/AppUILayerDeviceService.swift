//
//  AppUILayerDeviceService.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import UIKit
import AVFoundation

class AppUILayerDeviceService: AppUILayerDeviceServiceType {
    var screenSize: CGRect { UIScreen.main.bounds }
    var topPaddingValue: CGFloat {
        guard (UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 0.0) > 24 else { return Constants.paddingValues.top.withoutNotch }
            
        return Constants.paddingValues.top.withNotch
    }
    
    var bottomPaddingValue: CGFloat {
        guard (UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 0.0) > 0 else { return Constants.paddingValues.bottom.withoutNotch }
        
        return Constants.paddingValues.bottom.withNotch
    }
    
    func generateFeedback(with type: FeedbackType) {
        switch type {
        case .success:  UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        case .failure:  UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        }
    }
    
    func vibrate() { UIDevice.vibrate() }
}

extension UIDevice {
    static func vibrate() { AudioServicesPlayAlertSound(kSystemSoundID_Vibrate) }
}

extension AppUILayerDeviceService {
    private struct Constants {
        static let paddingValues = (top : (withNotch: 44.0, withoutNotch: 24.0),
                                    bottom : (withNotch: 34.0, withoutNotch: 0.0))
    }
}
