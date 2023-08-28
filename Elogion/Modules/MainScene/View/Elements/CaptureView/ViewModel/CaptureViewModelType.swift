//
//  CaptureViewModelType.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import AVFoundation

protocol CaptureViewModelType {
  var titleValue: String { get }
  
  func updatePrediction(for image: CVPixelBuffer)
}
