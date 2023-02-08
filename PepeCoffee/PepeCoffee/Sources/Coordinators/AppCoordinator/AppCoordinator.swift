//
//  MainCoordinator.swift
//  PepeCoffee
//
//  Created by Ksusha on 08.02.2023.
//

import UIKit

// MARK: - Protocol

protocol AppCoordinatorProtocol: Coordinator {
    var homeCoordinator: HomeCoordinatorProtocol { get } // координатор вкладки "Главная"
    var locationCoordinator: LocationCoordinatorProtocol { get } // координатор вкладки "Место нахождение"
    var menuCoordinator: MenuCoordinatorProtocol { get } // координатор вкладки "Меню"
    var authCoordinator: AuthCoordinatorProtocol { get } // координатор вкладки "Авторизация"
    var infoCoordinator: InfoCoordinatorProtocol { get } // координатор вкладки "Дополнительная инфориация"
}

// MARK: - Implementation

class AppCoordinator: AppCoordinatorProtocol {

    // MARK: - Internal Properties

    var appCoordinator: AppCoordinatorProtocol?
    var rootViewController: UIViewController = UITabBarController()

    var homeCoordinator: HomeCoordinatorProtocol = HomeCoordinator()
    var locationCoordinator: LocationCoordinatorProtocol = LocationCoordinator()
    var menuCoordinator: MenuCoordinatorProtocol = MenuCoordinator()
    var authCoordinator: AuthCoordinatorProtocol = AuthCoordinator()
    var infoCoordinator: InfoCoordinatorProtocol = InfoCoordinator()

    // MARK: - Internal Methods

    func start() -> UIViewController {
        return setupControllers()
    }

    // MARK: - Private Methods

    private func setupControllers() -> UIViewController {

        (rootViewController as? UITabBarController)?.viewControllers = [
            setupHomeController(),
            setupLocationController(),
            setupMenuController(),
            setupAuthController(),
            setupInfoController()
        ]

        return rootViewController
    }

    private func setupHomeController() -> UIViewController {
        let homeViewController = homeCoordinator.start()
        homeCoordinator.appCoordinator = self
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "homekit"), tag: 0)
        return homeViewController
    }

    private func setupLocationController() -> UIViewController{
        let locationController = locationCoordinator.start()
        locationCoordinator.appCoordinator = self
        locationController.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "location"), tag: 0)
        return locationController
    }

    private func setupMenuController() -> UIViewController {
        let menuController = menuCoordinator.start()
        menuCoordinator.appCoordinator = self
        menuController.tabBarItem = UITabBarItem(title: "Menu", image: UIImage(systemName: "menucard"), tag: 0)
        return menuController
    }

    private func setupAuthController() -> UIViewController {
        let authController = authCoordinator.start()
        authCoordinator.appCoordinator = self
        authController.tabBarItem = UITabBarItem(title: "Auth", image: UIImage(systemName: "person.crop.circle"), tag: 0)
        return authController
    }

    private func setupInfoController() -> UIViewController {
        let infoController = infoCoordinator.start()
        infoCoordinator.appCoordinator = self
        infoController.tabBarItem = UITabBarItem(title: "Info", image: UIImage(systemName: "info"), tag: 0)
        return infoController
    }
}
