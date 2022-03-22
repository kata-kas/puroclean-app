//
//  CustomTabView.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 08.03.2022.
//

import SwiftUI

struct CustomTabView<Content: View>: View {
    
    let tabs: [TabItemData]
    @Binding var selectedIndex: Int
    @ViewBuilder let content: (Int) -> Content
    @StateObject var menuData = MenuViewModel()
    @Namespace var animation
    
    var body: some View {
        ZStack {
            VStack {
                HeaderView(animation: animation)

                ZStack {
                    VStack {

                        TabView(selection: $selectedIndex) {

                            ForEach(tabs.indices) { index in
                                content(index)
                                    .tag(index)
                            }
                        }
                    }
                    
                    DrawerView()
                }
            }
            
            VStack {
                Spacer()
                TabBottomView(tabbarItems: tabs, selectedIndex: $selectedIndex)
            }
            .ignoresSafeArea()
//            .padding(.bottom, 8)
        }.environmentObject(menuData)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
