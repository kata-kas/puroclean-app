//
//  TabType.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 08.03.2022.
//

import Foundation

enum TabType: Int, CaseIterable {
    case home = 0
    case timeSensitive
    case regional
    case important
    case directory
    
    var tabItem: TabItemData {
            switch self {
            case .home:
                return TabItemData(title: "Home", image: "house")
            case .timeSensitive:
                return TabItemData( title: "Time Sensitive", image: "exclamationmark.triangle")
            case .regional:
                return TabItemData(title: "Regionals", image: "message")
            case .important:
                return TabItemData(title: "Important", image: "envelope")
            case .directory:
                return TabItemData(title: "Directory", image: "")
            }
        }
}
