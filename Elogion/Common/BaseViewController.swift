//
//  BaseViewController.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

import UIKit

class BaseViewController<InteractorT>: UIViewController {
    override func viewDidLoad() { super.viewDidLoad() }
    
    var interactor: InteractorT?
}
