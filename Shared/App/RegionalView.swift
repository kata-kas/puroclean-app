//
//  Regional.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 05.03.2022.
//

import SwiftUI

struct RegionalView: View {
    
    @State var regionalNotifications: [Notification] = Bundle.main.decode("RegionalNotifications.json")
    
    var body: some View {
        NavigationView {
            List{
                ForEach(regionalNotifications) {
                    regionalNotification in SpecificNotificationListView(notification: regionalNotification)
                }
                .onDelete(perform: deleteRegional)
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationBarHidden(true)
        }
    }
    
    func deleteRegional(at offsets: IndexSet) {
        regionalNotifications.remove(atOffsets: offsets)
    }
}

struct Regional_Previews: PreviewProvider {
    static var previews: some View {
        RegionalView()
    }
}
