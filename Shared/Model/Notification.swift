//
//  TimeSensitiveModel.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 07.03.2022.
//

import SwiftUI

struct Notification: Codable, Identifiable {
    let id: String
    let title: String
    let body: String
    let date: String
}
