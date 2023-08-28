//
//  MainSceneViewController.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

import UIKit

class MainSceneViewController: BaseViewController<MainSceneInteractable> {
  // MARK: View lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setup()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    interactor?.makeRequest(requestType: .viewIsReady)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    interactor?.makeRequest(requestType: .viewWillDisappear)
  }
  
  private func setup() {
    interactor?.makeRequest(requestType: .initialSetup)
  }
  
  @IBOutlet private weak var captureView: CaptureView!
  
}

extension MainSceneViewController: MainSceneViewControllerType {
  func update(viewModelDataType: MainSceneViewControllerViewModel.ViewModelDataType) {
    switch viewModelDataType {
    case .initialSetup(let model):
      captureView.setup(with: model.getCaptureViewModel())
    case .viewIsReady:          captureView.awakeSession()
    case .viewWillDisappear:    captureView.sleepSession()
    }
  }
}

extension MainSceneViewController {
  private struct Constants {
    
  }
}
