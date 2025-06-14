//
//  HomeViewController.swift
//  ModularBoilerplate
//
//  Created by Mohd Sazid Iqabal on 14/06/25.
//

import UIKit

final class HomeViewController: UIViewController {
    private let viewModel: HomeViewModel

    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Home"
        setupUI()
    }

    private func setupUI() {
        let label = UILabel()
        label.text = viewModel.welcomeText
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
