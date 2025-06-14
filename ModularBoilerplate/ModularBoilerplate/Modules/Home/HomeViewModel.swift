//
//  HomeViewModel.swift
//  ModularBoilerplate
//
//  Created by Mohd Sazid Iqabal on 14/06/25.
//

import Foundation

final class HomeViewModel {
    var welcomeText: String {
        return "Hello from Home!"
    }

    var onLoginTap: (() -> Void)?  // Add this closure for navigation
}
