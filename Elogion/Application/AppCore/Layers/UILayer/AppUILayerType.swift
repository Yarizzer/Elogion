//
//  AppUILayerType.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

protocol AppUILayerType: AnyObject {
    var style: AppUILayerStyleServiceType { get }
    var device: AppUILayerDeviceServiceType { get }
}
