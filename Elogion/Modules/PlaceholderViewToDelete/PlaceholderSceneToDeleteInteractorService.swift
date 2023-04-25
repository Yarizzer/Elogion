//
//  PlaceholderSceneToDeleteInteractorService.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol PlaceholderSceneToDeleteInteractorServiceType{ }

class PlaceholderSceneToDeleteInteractorService {
	init(withModel model: PlaceholderSceneToDeleteViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: PlaceholderSceneToDeleteViewModelType
}

extension PlaceholderSceneToDeleteInteractorService: PlaceholderSceneToDeleteInteractorServiceType { }
