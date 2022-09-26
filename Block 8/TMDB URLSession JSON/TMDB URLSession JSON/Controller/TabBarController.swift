//
//  TabBarController.swift
//  TMDB URLSession JSON
//
//  Created by Артем Билый on 25.09.2022.
//

import UIKit

class MainTabBarControllerViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    func setupTabBar() {
        let moviesListController = createNavController(controller: MoviesListController(), itemName: "Movies", itemImage: "checklist")
        let savedListController = createNavController(controller: SavedListController(), itemName: "Saved", itemImage: "rectangle.fill.on.rectangle.fill")
        viewControllers = [moviesListController, savedListController]
    }
    
    func createNavController(controller: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        let navigationController = UINavigationController(rootViewController: controller)
        controller.view.backgroundColor = .white
        navigationController.tabBarItem = item
        return navigationController
    }
}
