//
//  AuthViewController.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

class AuthViewController: UIViewController {

    // MARK: - Internal Properties

    var coordinator: AuthCoordinatorProtocol?

    // MARK: - Initializers

    init(coordinator: AuthCoordinatorProtocol) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
        title = "Auth"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Internal Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}
