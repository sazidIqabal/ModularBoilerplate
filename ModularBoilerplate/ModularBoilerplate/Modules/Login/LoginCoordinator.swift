//
//  LoginCoordinator.swift
//  ModularBoilerplate
//
//  Created by Mohd Sazid Iqabal on 14/06/25.
//

import UIKit

final class LoginCoordinator {
    private let navigationController: UINavigationController
    private let viewModel: LoginViewModel

    init(navigationController: UINavigationController, viewModel: LoginViewModel) {
        self.navigationController = navigationController
        self.viewModel = viewModel
    }

    func start() {
        let vc = LoginViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
}
