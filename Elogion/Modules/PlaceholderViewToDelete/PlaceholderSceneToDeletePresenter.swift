//
//  PlaceholderSceneToDeletePresenter.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

class PlaceholderSceneToDeletePresenter {
	init(for view: PlaceholderSceneToDeleteViewControllerType, service: PlaceholderSceneToDeletePresenterServiceType) {
		self.viewController = view
		self.service = service
	}
	
	private var viewController: PlaceholderSceneToDeleteViewControllerType?
	private let service: PlaceholderSceneToDeletePresenterServiceType
}

extension PlaceholderSceneToDeletePresenter: PlaceholderSceneToDeletePresentable {
	func response(responseType: PlaceholderSceneToDeletePresenterResponse.PlaceholderSceneToDeleteResponseType) {
		let model = service.model
		
		switch responseType {
		case .initialSetup: viewController?.update(viewModelDataType: .initialSetup(with: model))
		case .drainView: viewController = nil
		}
	}
}
