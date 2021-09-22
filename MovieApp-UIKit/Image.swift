//
//  Image.swift
//  MovieApp-UIKit
//
//  Created by Muhammed Hanifi Alma on 22.09.2021.
//

import UIKit

struct Image {
    
    static func by(assetId: ImageAssetId) -> UIImage? {
        return UIImage(named: assetId.rawValue)
    }
}

enum ImageAssetId: String, CaseIterable {

    //TabBar
    case tabBarDiscoverNormal, tabBarFavoritesNormal, tabBarSearchNormal
    case tabBarDiscoverSelected, tabBarFavoritesSelected, tabBarSearchSelected

    //Common
    case disclosureIndicator, iconReleaseFrame
}
