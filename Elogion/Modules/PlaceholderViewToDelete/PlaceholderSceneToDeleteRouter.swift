//
//  PlaceholderSceneToDeleteRouter.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

import UIKit

protocol PlaceholderSceneToDeleteRoutable {
	static func assembly() -> UIViewController
	func routeTo(scene type: PlaceholderSceneToDeleteRoutableContractData.PlaceholderSceneToDeleteRoutableSceneType)
}

class PlaceholderSceneToDeleteRouter {
	private func prepareDestinationScene(with type: PlaceholderSceneToDeleteRoutableContractData.PlaceholderSceneToDeleteRoutableSceneType) -> UIViewController {
		switch type {
		case .testScene: print("\(self) \(#function) msg: 'Test scene'")
		}
		
		return UIViewController()
	}
	
	private weak var view: PlaceholderSceneToDeleteViewController?
}

extension PlaceholderSceneToDeleteRouter: PlaceholderSceneToDeleteRoutable {
	static func assembly() -> UIViewController {
		let router = PlaceholderSceneToDeleteRouter()
		let vc                  = PlaceholderSceneToDeleteViewController(nibName: String(describing: PlaceholderSceneToDeleteViewController.self), bundle: Bundle.main)
		let viewModel           = PlaceholderSceneToDeleteViewModel()
		let presenterService    = PlaceholderSceneToDeletePresenterService(withModel: viewModel)
		let presenter           = PlaceholderSceneToDeletePresenter(for: vc, service: presenterService)
		let interactorService   = PlaceholderSceneToDeleteInteractorService(withModel: viewModel)
		let interactor          = PlaceholderSceneToDeleteInteractor(withRouter: router, presenter: presenter, service: interactorService)
		
        vc.interactor = interactor
		router.view = vc
		
		guard let view = router.view else {
			fatalError("cannot instantiate \(String(describing: PlaceholderSceneToDeleteViewController.self))")
		}
		
		return view
	}
	
	func routeTo(scene type: PlaceholderSceneToDeleteRoutableContractData.PlaceholderSceneToDeleteRoutableSceneType) {
		let vc = prepareDestinationScene(with: type)
        #warning("uncomment if need to implement custom scene transitioning")
//		vc.modalPresentationStyle = .currentContext
//		vc.transitioningDelegate = view
		self.view?.present(vc, animated: true)
	}
}
