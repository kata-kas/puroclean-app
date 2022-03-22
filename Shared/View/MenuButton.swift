//
//  MenuButtonView.swift
//  puroclean (iOS)
//
//  Created by Casuneanu Catalin on 05.03.2022.
//

import SwiftUI

struct MenuButton: View {
    
    var menuLink: MenuLink
    @EnvironmentObject var menuData: MenuViewModel
    
    @Binding var selectedMenu: String
    @Binding var showDrawer: Bool
    
    var animation: Namespace.ID
    
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()) {
                selectedMenu = menuLink.name
            }
            
        }, label: {
            
            HStack(spacing: 15){
                Image(systemName: menuLink.image)
                    .font(.title2)
                    .foregroundColor(selectedMenu == menuLink.name ? Color("navItemSelected") : .black)
                
                Text(menuLink.name)
                    .font(.title2)
                    .foregroundColor(selectedMenu == menuLink.name ? Color("navItemSelected") : .black)
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   alignment: .topLeading)
            .background(
                ZStack{
                    if selectedMenu == menuLink.name{
                        Color("pcGray")
                            .cornerRadius(10)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }else{
                        Color.clear
                    }
                }
            )
            .cornerRadius(10)
        })
//            .onTapGesture {
//            menuData.showDrawer = false
//        }
    }
}
