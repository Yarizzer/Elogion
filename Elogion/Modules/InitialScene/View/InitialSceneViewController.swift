//
//  InitialSceneViewController.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

import UIKit

class InitialSceneViewController: BaseViewController<InitialSceneInteractable> {
  // MARK: View lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setup()
  }
  
  private func setup() {
    interactor?.makeRequest(requestType: .initialSetup)
  }
}

extension InitialSceneViewController: InitialSceneViewControllerType {
  func update(viewModelDataType: InitialSceneViewControllerViewModel.ViewModelDataType) {
    switch viewModelDataType {
    case .initialSetup(let model):
      DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
        self?.interactor?.makeRequest(requestType: .routeToTabBarController)
      }
    }
  }
}

extension InitialSceneViewController: UIViewControllerTransitioningDelegate {
  func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    return BlurTransitionAnimator()
  }
  
  func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    return BlurTransitionAnimator()
  }
}

extension InitialSceneViewController {
  private struct Constants {
    
  }
}
