//
//  AppCoreContract.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

protocol AppCoreDataLayerType {
    var dataLayer: AppDataLayerType { get }
}

protocol AppCoreUILayerType {
    var uiLayer: AppUILayerType { get }
}

protocol AppCoreAILayerType {
    var aiLayer: AppAILayerType { get }
}
