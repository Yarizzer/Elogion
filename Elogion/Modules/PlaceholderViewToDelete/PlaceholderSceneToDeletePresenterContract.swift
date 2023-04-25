//
//  PlaceholderSceneToDeletePresenterContract.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol PlaceholderSceneToDeletePresentable {
    func response(responseType: PlaceholderSceneToDeletePresenterResponse.PlaceholderSceneToDeleteResponseType)
}

struct PlaceholderSceneToDeletePresenterResponse {
	enum PlaceholderSceneToDeleteResponseType {
		case initialSetup
		case drainView
	}
}
