//
//  InfoCoordinator.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

// MARK: - Protocol

protocol InfoCoordinatorProtocol: Coordinator { }

// MARK: - Implementation

class InfoCoordinator: InfoCoordinatorProtocol {

    // MARK: - Internal Properties

    var appCoordinator: AppCoordinatorProtocol?
    var rootViewController: UIViewController = UIViewController()

    // MARK: - Internal Methods

    func start() -> UIViewController {
        rootViewController = UINavigationController(rootViewController: InfoViewController(coordinator: self))
        return rootViewController
    }
}
