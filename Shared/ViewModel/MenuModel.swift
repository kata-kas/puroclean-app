//
//  MenuModel.swift
//  puroclean (iOS)
//
//  Created by Casuneanu Catalin on 05.03.2022.
//

import SwiftUI

// Menu Data
 
class MenuViewModel: ObservableObject {
    
    @Published var selectedMenu = "Dashboard"
    
    @Published var showDrawer = false
}
