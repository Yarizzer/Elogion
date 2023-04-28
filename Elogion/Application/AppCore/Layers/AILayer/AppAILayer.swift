//
//  AppAILayer.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import CoreML

class AppAILayer {
    init() {
        self.objectPredictor = ObjectPredictor()
    }
    //Publishers
    var data: Publisher<String?> = Publisher(nil)
    
    private let objectPredictor: ObjectPredictable
}

extension AppAILayer: AppAILayerType {
    //Functions
    func updatePrediction(for image: CVPixelBuffer) {
//        guard let mlModel else { return }
//        
//        let newPrediction = try? mlModel.prediction(image: image).classLabel
//        
//        guard data.value != newPrediction else { return }
//        
//        DispatchQueue.main.async { [weak self] in
//            self?.data.value = newPrediction
//        }
    }
}
