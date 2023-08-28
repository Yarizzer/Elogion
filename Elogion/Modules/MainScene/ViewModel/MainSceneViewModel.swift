//
//  MainSceneViewModel.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol MainSceneViewModelType {
  //Subscription
  func setupSubscription()
  //Publisher
  var dataDidChanged: Publisher<Bool?> { get }
  
  func getCaptureViewModel() -> CaptureViewModelType
}

class MainSceneViewModel {
  //Subscription
  func setupSubscription() {
    AppCore.shared.aiLayer.data.subscribe(self) { [weak self] data in
      self?.data = data.newValue
    }
  }
  
  //Publisher
  var dataDidChanged: Publisher<Bool?> = Publisher(nil)
  
  private var data: String? {
    didSet {
      dataDidChanged.value = true
    }
  }
}

extension MainSceneViewModel: MainSceneViewModelType {
  func getCaptureViewModel() -> CaptureViewModelType { CaptureViewModel() }
}
