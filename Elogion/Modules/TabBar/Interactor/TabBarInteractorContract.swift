//
//  TabBarControllerInteractorContract.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

protocol TabBarControllerInteractable {
    func makeRequest(requestType: TabBarInteractorRequest.RequestType)
}

struct TabBarInteractorRequest {
    enum RequestType {
        case initialSetup
    }
}
