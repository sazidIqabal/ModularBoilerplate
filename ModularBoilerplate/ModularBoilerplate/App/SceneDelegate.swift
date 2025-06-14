//
//  SceneDelegate.swift
//  ModularBoilerplate
//
//  Created by Mohd Sazid Iqabal on 14/06/25.
//

//import UIKit
//
//class SceneDelegate: UIResponder, UIWindowSceneDelegate {
//    var window: UIWindow?
//    var appCoordinator: AppCoordinator?
//
//    func scene(
//        _ scene: UIScene,
//        willConnectTo session: UISceneSession,
//        options connectionOptions: UIScene.ConnectionOptions
//    ) {
//        guard let windowScene = (scene as? UIWindowScene) else { return }
//
//        let window = UIWindow(windowScene: windowScene)
//        let diContainer = AppDIContainer()
//        let coordinator = AppCoordinator(window: window, diContainer: diContainer)
//
//        self.window = window
//        self.appCoordinator = coordinator
//
//        coordinator.start()
//        window.makeKeyAndVisible()
//    }
//}

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        let diContainer = AppDIContainer()
        let coordinator = AppCoordinator(window: window, diContainer: diContainer)

        self.window = window
        self.appCoordinator = coordinator

        coordinator.start()
        window.makeKeyAndVisible()
    }
}
