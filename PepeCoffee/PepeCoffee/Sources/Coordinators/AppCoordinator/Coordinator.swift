//
//  Coordinator.swift
//  PepeCoffee
//
//  Created by Ksusha on 07.02.2023.
//

import UIKit

// MARK: - Protocols

protocol FlowCoordinator {

    // MARK: - Properties

    var appCoordinator: AppCoordinatorProtocol? { get set }
}

protocol Coordinator: FlowCoordinator {

    // MARK: - Properties

    var rootViewController: UIViewController { get set }

    // MARK: - Methods

    func start() -> UIViewController
}
