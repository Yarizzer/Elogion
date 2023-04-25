//
//  InitialScenePresenterContract.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol InitialScenePresentable {
    func response(responseType: InitialScenePresenterResponse.ResponseType)
}

struct InitialScenePresenterResponse {
	enum ResponseType {
		case initialSetup
		case drainView
	}
}
