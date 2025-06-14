//
//  AppDelegate.swift
//  ModularBoilerplate
//
//  Created by Mohd Sazid Iqabal on 14/06/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let diContainer = AppDIContainer()
        let coordinator = AppCoordinator(window: window, diContainer: diContainer)

        self.window = window
        self.appCoordinator = coordinator

        coordinator.start()
        window.makeKeyAndVisible()
        return true
    }
}
