//
//  PlaceholderSceneToDeleteInteractor.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

class PlaceholderSceneToDeleteInteractor {
	init(withRouter router: PlaceholderSceneToDeleteRoutable, presenter: PlaceholderSceneToDeletePresentable, service: PlaceholderSceneToDeleteInteractorServiceType) {
		self.router = router
		self.presenter = presenter
		self.service = service
	}

	private let router: PlaceholderSceneToDeleteRoutable
	private let presenter: PlaceholderSceneToDeletePresentable
	private let service: PlaceholderSceneToDeleteInteractorServiceType
}

extension PlaceholderSceneToDeleteInteractor: PlaceholderSceneToDeleteInteractable {
	func makeRequest(requestType: PlaceholderSceneToDeleteInteractorRequest.RequestType) {
		switch requestType {
		case .initialSetup: presenter.response(responseType: .initialSetup)
		}
	}
}
