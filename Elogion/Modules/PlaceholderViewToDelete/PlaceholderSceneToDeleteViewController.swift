//
//  PlaceholderSceneToDeleteViewController.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

import UIKit

class PlaceholderSceneToDeleteViewController: BaseViewController<PlaceholderSceneToDeleteInteractable> {
	// MARK: View lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setup()
	}
	
	private func setup() {
		interactor?.makeRequest(requestType: .initialSetup)
	}
}

extension PlaceholderSceneToDeleteViewController: PlaceholderSceneToDeleteViewControllerType {
	func update(viewModelDataType: PlaceholderSceneToDeleteViewControllerViewModel.ViewModelDataType) {
		switch viewModelDataType {
		case .initialSetup(let model):
			print("\(self) \(#function) with model instance \(model)")
		}
	}
}

extension PlaceholderSceneToDeleteViewController {
	private struct Constants {
		
	}
}
