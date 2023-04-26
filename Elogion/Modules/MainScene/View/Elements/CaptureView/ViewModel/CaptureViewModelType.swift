//
//  CaptureViewModelType.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import AVFoundation
import CoreML

protocol CaptureViewModelType {
    var titleValue: String { get }
    
    func getPrediction(image buffer: CVPixelBuffer) -> String?
}
