//
//  AppUILayerStyleServiceType.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import UIKit

protocol AppUILayerStyleServiceType: AnyObject {
    //Colors
    var colorClear: UIColor { get }
    var colorWhite: UIColor { get }
    var colorBlack: UIColor { get }
    var colorLightGray: UIColor { get }
    var colorDarkGray: UIColor { get }
    var colorRed: UIColor { get }
    var colorSoftGreen: UIColor { get }
    var colorGreen: UIColor { get }
    var colorSoftYellow: UIColor { get }
    var colorSoftBlue: UIColor { get }
    var colorBlue: UIColor { get }
    var colorSoftPurple: UIColor { get }
    var colorPurple: UIColor { get }
    //Fonts
    var labelTitleFontLarge: UIFont { get }
    var labelTitleFontMedium: UIFont { get }
    var labelTitleFontSmall: UIFont { get }
    //Buttons
    var layerBorderWidth: CGFloat { get }
    var layerLineWidth: CGFloat { get }
}
