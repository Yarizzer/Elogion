//
//  TabBarControllerPresenterContract.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

protocol TabBarControllerPresentable {
    func response(responseType: TabBarPresenterResponse.ResponseType)
}

struct TabBarPresenterResponse {
    enum ResponseType {
        case initialSetup
        case drainView
    }
}
