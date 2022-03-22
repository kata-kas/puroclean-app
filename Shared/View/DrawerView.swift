//
//  DrawerView.swift
//  puroclean (iOS)
//
//  Created by Casuneanu Catalin on 05.03.2022.
//

import SwiftUI

struct DrawerView: View {
    
    @EnvironmentObject var menuData: MenuViewModel
    
    @Namespace var animation
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10, content: {
                VStack(alignment: .leading){
                        ForEach(menuLinks, id: \.id){
                            menuLink in
                            MenuButton(
                                menuLink: menuLink,  selectedMenu: $menuData.selectedMenu, showDrawer: $menuData.showDrawer, animation: animation)
                        }
                 
                    List{
                        Section(header: Text("External Links")
                                    .foregroundColor(.white)
                                    .font(.headline)
                        ){
                        ForEach(externalLinks, id: \.id){
                            externalLink in Button(externalLink.text){
                                openURL(URL(string: externalLink.link)!)
                            }
                        }
                        .listRowBackground(Color("timeSensitiveBody"))
                        .listRowSeparator(.hidden)
                        .foregroundColor(.white)
                        .font(.body)
                    }

                    }
                    .listStyle(.plain)
                    .background(Color("timeSensitiveBody"))
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity,
                           alignment: .topLeading)
                }
                .frame(alignment: .leading)
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity,
                       alignment: .topLeading)
            })
            
            Spacer()
        }
//        .frame(width: menuData.showDrawer ? .infinity : 0)
        .ignoresSafeArea(.all)

        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .topLeading)
        .background(Color.white)
        .offset(x: menuData.showDrawer ? 0 : 440)
    }
}

struct DrawerView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

