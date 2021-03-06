//
//  TabBarItem.swift
//  MovieApp-UIKit
//
//  Created by Muhammed Hanifi Alma on 22.09.2021.
//

import UIKit

enum TabBarItem {
    case discover, favorites, search

    var title: String {
        switch self {
        case .discover  : return "Discover"
        case .favorites : return "Favorites"
        case .search    : return "Search"
        }
    }
}

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }

    private func configureTabBar() {
        let discoverNavController = UINavigationController(rootViewController: DiscoverTableVC())
        //let favoritesNavController = UINavigationController(rootViewController: FavoritesTableVC())
        let searchNavController = UINavigationController(rootViewController: SearchTableVC())

        discoverNavController.tabBarItem = UITabBarItem(title: TabBarItem.discover.title,
                                                        image: Image.by(assetId: .tabBarDiscoverNormal),
                                                        selectedImage: Image.by(assetId: .tabBarDiscoverSelected))

//        favoritesNavController.tabBarItem = UITabBarItem(title: TabBarItem.favorites.title,
//                                                         image: Image.by(assetId: .tabBarFavoritesNormal),
//                                                         selectedImage: Image.by(assetId: .tabBarFavoritesSelected))

        searchNavController.tabBarItem = UITabBarItem(title: TabBarItem.search.title,
                                                      image: Image.by(assetId: .tabBarSearchNormal),
                                                      selectedImage: Image.by(assetId: .tabBarSearchSelected))

        viewControllers = [discoverNavController, /*favoritesNavController,*/ searchNavController]
    }
}

