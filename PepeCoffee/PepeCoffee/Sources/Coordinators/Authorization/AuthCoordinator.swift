//
//  AuthCoordinator.swift
//  PepeCoffee
//
//  Created by Ksusha on 07.02.2023.
//

import UIKit

// MARK: - Protocol

protocol AuthCoordinatorProtocol: Coordinator { }

// MARK: - Implementation

class AuthCoordinator: AuthCoordinatorProtocol {
    
    // MARK: - Internal Properties

    var appCoordinator: AppCoordinatorProtocol?
    var rootViewController: UIViewController = UIViewController()

    // MARK: - Internal Methods

    func start() -> UIViewController {
        rootViewController = UINavigationController(rootViewController: AuthViewController(coordinator: self))
        return rootViewController
    }
}
