//
//  MainSceneInteractor.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

class MainSceneInteractor {
  init(withRouter router: MainSceneRoutable, presenter: MainScenePresentable, service: MainSceneInteractorServiceType) {
    self.router = router
    self.presenter = presenter
    self.service = service
  }
  
  private let router: MainSceneRoutable
  private let presenter: MainScenePresentable
  private let service: MainSceneInteractorServiceType
}

extension MainSceneInteractor: MainSceneInteractable {
  func makeRequest(requestType: MainSceneInteractorRequest.RequestType) {
    switch requestType {
    case .initialSetup: presenter.response(responseType: .initialSetup)
    case .viewIsReady: presenter.response(responseType: .viewIsReady)
    case .viewWillDisappear: presenter.response(responseType: .viewWillDisappear)
    }
  }
}
