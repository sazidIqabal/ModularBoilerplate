//
//  AppCoordinator.swift
//  ModularBoilerplate
//
//  Created by Mohd Sazid Iqabal on 14/06/25.
//

import UIKit

final class AppCoordinator {
    private let window: UIWindow
    private let diContainer: AppDIContainer
    private var homeCoordinator: HomeCoordinator?  // ✅ RETAIN IT

    init(window: UIWindow, diContainer: AppDIContainer) {
        self.window = window
        self.diContainer = diContainer
    }

    func start() {
        let coordinator = diContainer.makeHomeCoordinator(window: window)
        homeCoordinator = coordinator
        coordinator.start()
    }
}
