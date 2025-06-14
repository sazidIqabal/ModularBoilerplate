//
//  HomeCoordinator.swift
//  ModularBoilerplate
//
//  Created by Mohd Sazid Iqabal on 14/06/25.
//

import UIKit

final class HomeCoordinator {
    private let window: UIWindow
    private let viewModel: HomeViewModel

    init(window: UIWindow, viewModel: HomeViewModel) {
        self.window = window
        self.viewModel = viewModel
    }

    func start() {
        let vc = HomeViewController(viewModel: viewModel)
        viewModel.onLoginTap = { [weak self] in
            self!.showLogin()
        }
        let nav = UINavigationController(rootViewController: vc)
        window.rootViewController = nav
        navigationController = nav
    }

    private var navigationController: UINavigationController?

    private func showLogin() {
        print(navigationController)
        guard let nav = navigationController else {
            print(navigationController)
            return
        }
        let loginCoordinator = LoginCoordinator(navigationController: nav, viewModel: LoginViewModel())
        loginCoordinator.start()
    }
}
