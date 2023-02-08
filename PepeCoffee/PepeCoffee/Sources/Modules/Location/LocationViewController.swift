//
//  LocationViewController.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

class LocationViewController: UIViewController {

    // MARK: - Internal Properties

    var coordinator: LocationCoordinatorProtocol?

    // MARK: - Initializers

    init(coordinator: LocationCoordinatorProtocol) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
        title = "Location"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Internal Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
    }
}
