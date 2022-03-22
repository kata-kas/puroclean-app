//
//  TabBottomView.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 08.03.2022.
//

import SwiftUI

struct TabBottomView: View {
    let tabbarItems: [TabItemData]
        var height: CGFloat = 90
        var width: CGFloat = UIScreen.main.bounds.width
        @Binding var selectedIndex: Int
        
        var body: some View {
            HStack {
                Spacer()
                
                ForEach(tabbarItems.indices) { index in
                    let item = tabbarItems[index]
                    
                    if (index != 4){
                        Button {
                            self.selectedIndex = index
                        } label: {
                            let isSelected = selectedIndex == index
                            TabItemView(data: item, isSelected: isSelected)
                        }
                        .badge(23)
                        
                        Spacer()
                    }
                }
            }
            .frame(width: width, height: height)
            .background(Color("#F7F8F8"))
        }
}

struct TabBottomView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
