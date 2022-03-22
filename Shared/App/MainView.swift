//
//  MainView.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 05.03.2022.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedIndex: Int = 0
    
       var body: some View {
           CustomTabView(tabs: TabType.allCases.map({ $0.tabItem }), selectedIndex: $selectedIndex) { index in
               let type = TabType(rawValue: index) ?? .home
               getTabView(type: type)
           }
       }
       
       @ViewBuilder
       func getTabView(type: TabType) -> some View {
           switch type {
           case .home:
               HomeView()
           case .timeSensitive:
               TimeSensitiveView()
           case .regional:
               RegionalView()
           case .important:
               ImportantView()
           case .directory:
               Directory()
           }
       }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
