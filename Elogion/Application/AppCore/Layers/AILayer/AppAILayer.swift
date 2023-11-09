//
//  AppAILayer.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import CoreML

final class AppAILayer {
    init() {
        self.mlModel = try? Resnet50(configuration: MLModelConfiguration())
    }
    
    private let mlModel: Resnet50?
    
    //Publishers
    var data: Publisher<String?> = Publisher(nil)
}

extension AppAILayer: AppAILayerType {
    //Functions
    func updatePrediction(for image: CVPixelBuffer) {
        guard let mlModel else { return }

        let newPrediction = try? mlModel.prediction(image: image).classLabel

        guard data.value != newPrediction else { return }

        DispatchQueue.main.async { [weak self] in
            self?.data.value = newPrediction
        }
    }
}
