//
//  AppCore.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

class AppCore {
    static let shared = AppCore()
    
    private init() {
        self.dataL = AppDataLayer()
        self.uiL = AppUILayer()
        self.aiL = AppAILayer()
    }
    
    private let dataL: AppDataLayerType
    private let uiL: AppUILayerType
    private let aiL: AppAILayerType
}

extension AppCore: AppCoreDataLayerType {
    var dataLayer: AppDataLayerType { dataL }
}

extension AppCore: AppCoreUILayerType {
    var uiLayer: AppUILayerType { uiL }
}

extension AppCore: AppCoreAILayerType {
    var aiLayer: AppAILayerType { aiL }
}
