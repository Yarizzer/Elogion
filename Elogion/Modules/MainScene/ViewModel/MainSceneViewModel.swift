//
//  MainSceneViewModel.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol MainSceneViewModelType {
    func getCaptureViewModel() -> CaptureViewModelType
}

class MainSceneViewModel { }

extension MainSceneViewModel: MainSceneViewModelType {
    func getCaptureViewModel() -> CaptureViewModelType { CaptureViewModel() }
}
