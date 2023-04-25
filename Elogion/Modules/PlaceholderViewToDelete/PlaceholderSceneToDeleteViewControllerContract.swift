//
//  PlaceholderSceneToDeleteViewControllerContract.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol PlaceholderSceneToDeleteViewControllerType {
	func update(viewModelDataType: PlaceholderSceneToDeleteViewControllerViewModel.ViewModelDataType)
}

struct PlaceholderSceneToDeleteViewControllerViewModel {
	enum ViewModelDataType {
		case initialSetup(with: PlaceholderSceneToDeleteViewModelType)
	}
}
