//
//  MenuCoordinator.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

// MARK: - Protocol

protocol MenuCoordinatorProtocol: Coordinator { }

// MARK: - Implementation

class MenuCoordinator: MenuCoordinatorProtocol {

    // MARK: - Internal Properties
    
    var appCoordinator: AppCoordinatorProtocol?
    var rootViewController: UIViewController = UIViewController()

    // MARK: - Internal Methods

    func start() -> UIViewController {
        rootViewController = UINavigationController(rootViewController: MenuViewController(coordinator: self))
        return rootViewController
    }
}
