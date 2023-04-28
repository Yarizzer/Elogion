//
//  AppAILayerType.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import CoreML

protocol AppAILayerType {
    //Publishers
    var data: Publisher<String?> { get }
    
    //Functions
    func updatePrediction(for image: CVPixelBuffer)
}
