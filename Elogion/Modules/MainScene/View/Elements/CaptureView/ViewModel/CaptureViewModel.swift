//
//  CaptureViewModel.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

class CaptureViewModel {
    
}

extension CaptureViewModel: CaptureViewModelType {
    var titleValue: String { Constants.labelValue }
}

extension CaptureViewModel {
    private struct Constants {
        static let labelValue = "Show me an object that invoked you're emotions"
    }
}
