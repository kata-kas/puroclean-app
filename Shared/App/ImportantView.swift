//
//  Important.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 05.03.2022.
//

import SwiftUI

struct ImportantView: View {
    
    @State var importantEmailsNotifications: [Notification] = Bundle.main.decode("ImportantEmails.json")
    
    var body: some View {
        NavigationView{
        List {
            ForEach(importantEmailsNotifications) {
                importantEmailsNotification in
                NavigationLink(destination: NotificationDetail(notification: importantEmailsNotification)){
                    SpecificNotificationListView(notification: importantEmailsNotification)
                }
            }
            .onDelete(perform: deleteImportant)
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .navigationBarHidden(true)
        }
    }
    
    func deleteImportant(at offsets: IndexSet) {
        importantEmailsNotifications.remove(atOffsets: offsets)
    }
}

struct Important_Previews: PreviewProvider {
    static var previews: some View {
        ImportantView()
    }
}
