//
//  TabItemView.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 08.03.2022.
//

import SwiftUI

struct TabItemData {
    let title: String
    let image: String
}

struct TabItemView: View {
    let data: TabItemData
    let isSelected: Bool
    
    var body: some View {
        VStack {
            Image(systemName: data.image)
                .resizable()
                .font(Font.title.weight(.bold))
                .foregroundColor(isSelected ? .red : .black)
                .frame(width: 32, height: 30)
            
            Spacer().frame(height: 4)
        }
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
