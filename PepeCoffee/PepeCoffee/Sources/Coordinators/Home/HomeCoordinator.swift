//
//  HomeCoordinator.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

// MARK: - Protocol

protocol HomeCoordinatorProtocol: Coordinator { }

// MARK: - Implementation

class HomeCoordinator: HomeCoordinatorProtocol {

    // MARK: - Internal Properties

    var appCoordinator: AppCoordinatorProtocol?
    var rootViewController: UIViewController = UIViewController()

    // MARK: - Internal Methods

    func start() -> UIViewController {
        rootViewController = UINavigationController(rootViewController: HomeViewController(coordinator: self))
        return rootViewController
    }
}
