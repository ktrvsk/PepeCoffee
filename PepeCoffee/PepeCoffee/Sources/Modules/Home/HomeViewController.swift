//
//  HomeViewController.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Internal Properties

    var coordinator: HomeCoordinatorProtocol?

    // MARK: - Initializers

    init(coordinator: HomeCoordinatorProtocol) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
        title = "Home"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Internal Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}
