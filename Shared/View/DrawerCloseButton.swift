//
//  DrawerCloseButton.swift
//  puroclean (iOS)
//
//  Created by Casuneanu Catalin on 06.03.2022.
//

import SwiftUI

struct DrawerCloseButton: View {
    
    @EnvironmentObject var menuData: MenuViewModel
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut){
                menuData.showDrawer.toggle()
            }
        },label: {
            VStack(spacing: 5){
                Capsule()
                    .fill(Color.black)
                    .frame(width: 35, height: 3)
                    .rotationEffect(.init(degrees: menuData.showDrawer ? -50 : 0))
                    .offset(x: menuData.showDrawer ? 2 : 0, y: menuData.showDrawer ? 9: 0)
                
                VStack(spacing: 5){
                    Capsule()
                        .fill(Color.black)
                        .frame(width: 35, height: 3)
                    Capsule()
                        .fill(Color.black)
                        .frame(width: 35, height: 3)
                        .offset(y: menuData.showDrawer ? -8 : 0)
                }
                .rotationEffect(.init(degrees: menuData.showDrawer ? 50 : 0))
            }
        })
        .accentColor(Color.primary)
        .scaleEffect(0.8)
        .matchedGeometryEffect(id: "MENU_BUTTON", in: animation)
    }
}
