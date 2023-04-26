//
//  AppAILayer.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

class AppAILayer {
    init() {
        self.objectPredictor = ObjectPredictor()
    }
    
    private let objectPredictor: ObjectPredictable
}

extension AppAILayer: AppAILayerType {
    
}
