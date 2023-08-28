//
//  CaptureViewModel.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import CoreML

class CaptureViewModel {
  init() {
    self.mlModel = try? Resnet50(configuration: MLModelConfiguration())
  }
  
  private let mlModel: Resnet50?
}

extension CaptureViewModel: CaptureViewModelType {
  var titleValue: String { Constants.labelValue }
  
  func updatePrediction(for image: CVPixelBuffer) {
    AppCore.shared.aiLayer.updatePrediction(for: image)
  }}

extension CaptureViewModel {
  private struct Constants {
    static let labelValue = "Show me an object that invoked you're emotions"
  }
}
