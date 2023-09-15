//
//  MainScenePresenterService.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol MainScenePresenterServiceType: AnyObject {
	var model: MainSceneViewModelType { get }
}

class MainScenePresenterService {
	init(withModel model: MainSceneViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: MainSceneViewModelType
}

extension MainScenePresenterService: MainScenePresenterServiceType {
	var model: MainSceneViewModelType { return viewModel }
}
