//
//  MenuViewController.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

class MenuViewController: UIViewController {

    // MARK: - Internal Properties

    var coordinator: MenuCoordinatorProtocol?

    // MARK: - Initializers

    init(coordinator: MenuCoordinatorProtocol) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
        title = "Menu"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Internal Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
}
