//
//  AppDIContainer.swift
//  ModularBoilerplate
//
//  Created by Mohd Sazid Iqabal on 14/06/25.
//

import UIKit

final class AppDIContainer {
    func makeHomeCoordinator(window: UIWindow) -> HomeCoordinator {
        let homeViewModel = HomeViewModel()
        return HomeCoordinator(window: window, viewModel: homeViewModel)
    }
}
