//
//  TabBarControllerContract.swift
//  Elogion
//
//  Created by Yaroslav Abaturov on 25.04.2023.
//

protocol TabBarControllerType {
    func update(viewModelDataType: TabBarViewControllerViewModel.ViewModelDataType)
}

struct TabBarViewControllerViewModel {
    enum ViewModelDataType {
        case initialSetup(with: TabBarViewControllerModelType)
    }
}
