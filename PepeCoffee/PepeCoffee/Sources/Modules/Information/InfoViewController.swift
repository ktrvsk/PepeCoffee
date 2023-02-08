//
//  InfoViewController.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

class InfoViewController: UIViewController {

    // MARK: - Internal Properties

    var coordinator: InfoCoordinatorProtocol?

    // MARK: - Initializers

    init(coordinator: InfoCoordinatorProtocol) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
        title = "Info"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Internal Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
    }
}
