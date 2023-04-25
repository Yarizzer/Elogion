//
//  PlaceholderSceneToDeletePresenterService.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol PlaceholderSceneToDeletePresenterServiceType{
	var model: PlaceholderSceneToDeleteViewModelType { get }
}

class PlaceholderSceneToDeletePresenterService {
	init(withModel model: PlaceholderSceneToDeleteViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: PlaceholderSceneToDeleteViewModelType
}

extension PlaceholderSceneToDeletePresenterService: PlaceholderSceneToDeletePresenterServiceType {
	var model: PlaceholderSceneToDeleteViewModelType { return viewModel }
}
