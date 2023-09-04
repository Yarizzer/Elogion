//
//  AppCoreContract.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

protocol AppCoreDataLayerType: AnyObject {
    var dataLayer: AppDataLayerType { get }
}

protocol AppCoreUILayerType: AnyObject {
    var uiLayer: AppUILayerType { get }
}

protocol AppCoreAILayerType: AnyObject {
    var aiLayer: AppAILayerType { get }
}
