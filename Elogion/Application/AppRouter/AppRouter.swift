//
//  AppRouter.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import UIKit

protocol AppRoutable {
    func routeToInitialScene()
}

class AppRouter {
    init() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .systemBackground
        self.window = window
    }
    
    private var window: UIWindow
}

extension AppRouter: AppRoutable {
    func routeToInitialScene() {
//        window.rootViewController = InitialSceneRouter.assembly()
        window.rootViewController = TabBarRouter.assembly()
        window.makeKeyAndVisible()
    }
}
