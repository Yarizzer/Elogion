//
//  AppDelegate.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    private var router: AppRoutable?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        router = AppRouter()
        
        routeToInitialScene()
        
        return true
    }
    
    private func routeToInitialScene() {
        self.router?.routeToInitialScene()
    }
}
