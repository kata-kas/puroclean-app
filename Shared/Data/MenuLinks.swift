//
//  MenuLinks.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 08.03.2022.
//

import Foundation

struct MenuLink {
    let id: String
    let name: String
    let image: String
    let url: String
}

var menuLinks: [MenuLink] = [
    MenuLink(id: "1", name: "Dashboard", image: "house", url: "RegionalView"),
    MenuLink(id: "2", name: "Time-sensitive notifications", image: "exclamationmark.triangle", url: "RegionalView"),
    MenuLink(id: "3", name: "Regional Notifications", image: "message", url: "RegionalView"),
    MenuLink(id: "4", name: "Important emails", image: "envelope", url: "RegionalView"),
    MenuLink(id: "5", name: "Directory", image: "doc.on.doc", url: "RegionalView"),
    MenuLink(id: "6", name: "Support", image: "info.circle", url: "RegionalView"),
    MenuLink(id: "7", name: "Settings", image: "gearshape", url: "RegionalView"),
    MenuLink(id: "8", name: "Account", image: "person", url: "RegionalView")
]
