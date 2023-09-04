//
//  TabBarRouter.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import UIKit

protocol TabBarRoutable: AnyObject {
    static func assembly() -> UITabBarController
}

class TabBarRouter {
    private weak var controller: UITabBarController?
}

extension TabBarRouter: TabBarRoutable {
    static func assembly() -> UITabBarController {
        let router = TabBarRouter()
        
#warning("remove when ready other scenes")
        let leftVC = configureVC(vc: PlaceholderSceneToDeleteRouter.assembly(), tabBarItemData: Constants.placeholderData)
        let mainVC = configureVC(vc: MainSceneRouter.assembly(), tabBarItemData: Constants.mainSceneData)
        let rightVC = configureVC(vc: PlaceholderSceneToDeleteRouter.assembly(), tabBarItemData: Constants.placeholderData)
        
        let controller = UITabBarController()
        
        controller.tabBar.tintColor = AppCore.shared.uiLayer.style.colorBlue
        controller.tabBar.unselectedItemTintColor = AppCore.shared.uiLayer.style.colorDarkGray
        controller.tabBar.backgroundColor = AppCore.shared.uiLayer.style.colorLightGray
        
        router.controller = controller
        router.controller?.viewControllers = [leftVC, mainVC, rightVC]
        
        guard let controller = router.controller else {
            fatalError("cannot instantiate \(String(describing: UITabBarController.self))")
        }
        
        return controller
    }
    
    private static func configureVC(vc: UIViewController, tabBarItemData: (title: String, imageName: String)) -> UIViewController {
        vc.tabBarItem.image = UIImage(named: tabBarItemData.imageName)
        vc.tabBarItem.title = tabBarItemData.title
        
        return vc
    }
}

extension TabBarRouter {
    private struct Constants {
        static let placeholderData = (title: "?", imageName: "PlaceholderSceneTabBarItemImage-universal")
        static let mainSceneData = (title: "Main", imageName: "MainSceneTabBarItemImage-universal")
    }
}
