//
//  ContentView.swift
//  Shared
//
//  Created by Casuneanu Catalin on 05.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("Content")
            DrawerView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
