//
//  InitialSceneInteractorService.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol InitialSceneInteractorServiceType{ }

class InitialSceneInteractorService {
	init(withModel model: InitialSceneViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: InitialSceneViewModelType
}

extension InitialSceneInteractorService: InitialSceneInteractorServiceType { }
