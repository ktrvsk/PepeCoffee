//
//  AppDelegate.swift
//  PepeCoffee
//
//  Created by Ksusha on 07.02.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Intenral Properties

    var window: UIWindow?

    // MARK: - Intenral Methods

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        setupWindow()

        return true
    }

    // MARK: - Private Methods

    private func setupWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = AppCoordinator().start()
        window?.makeKeyAndVisible()
    }
}

