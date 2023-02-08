//
//  LocationCoordinator.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

// MARK: - Protocol

protocol LocationCoordinatorProtocol: Coordinator { }

// MARK: - Implementation

class LocationCoordinator: LocationCoordinatorProtocol {

    // MARK: - Internal Properties
    
    var appCoordinator: AppCoordinatorProtocol?
    var rootViewController: UIViewController = UIViewController()

    // MARK: - Internal Methods

    func start() -> UIViewController {
        rootViewController = UINavigationController(rootViewController: LocationViewController(coordinator: self))
        return rootViewController
    }
}
