//
//  ExternalLinks.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 08.03.2022.
//

import Foundation

struct ExternalLink {
    let id: String
    let link: String
    let text: String
}

var externalLinks: [ExternalLink] = [
    ExternalLink(id: "1", link: "http://www.purodrive.com", text: "PuroDrive"),
    ExternalLink(id: "2", link: "https://www.purofab.com", text: "PuroFab"),
    ExternalLink(id: "3", link: "https://www.purocleanonlineacademy.com", text: "PuroClean Online Academy"),
    ExternalLink(id: "4", link: "https://www.hackingwithswift.com/quick-start/swiftui", text: "The Water Cooler"),
]
