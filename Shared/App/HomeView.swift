//
//  HomeView.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 07.03.2022.
//

import SwiftUI

struct HomeView: View {
    @State var timeSensitiveNotifications: [Notification] = Bundle.main.decode("TimeSensitiveNotifications.json")
    @State var regionalNotifications: [Notification] = Bundle.main.decode("RegionalNotifications.json")
    @State var importantEmailsNotifications: [Notification] = Bundle.main.decode("ImportantEmails.json")
    
    var body: some View {
        
        NavigationView {
            List{
                Section(header:
                            HStack{
                                Image(systemName: "exclamationmark.triangle")
                                Text("Time-Sensitive Notifications")
                                    .fontWeight(.medium)
                                    .textCase(.uppercase)
                                }){
                                    ForEach(timeSensitiveNotifications) {
                                        timeSensitiveNotification in NotificationListView(notification: timeSensitiveNotification, bodyColor: "timeSensitiveBody", actionColor: "timeSensitiveAction")
                                    }
                                    
                              }
                              .foregroundColor(Color.red)
                              .listRowSeparator(.hidden)
                
                
                Section(header:
                HStack{
                    Image(systemName: "message")
                    Text("Regional Notifications")
                        .fontWeight(.medium)
                        .textCase(.uppercase)
                }){
                    ForEach(regionalNotifications) {
                        regionalNotification in NotificationListView(notification: regionalNotification, bodyColor: "regionalBody", actionColor: "regionalAction")
                    }
                    .onDelete(perform: deleteRegional)
                }
                .foregroundColor(Color.blue)
                .listRowSeparator(.hidden)
                
               
                Section(header:
                HStack{
                    Image(systemName: "envelope")
                    Text("Important Notifications")
                        .fontWeight(.medium)
                        .textCase(.uppercase)
                }){
                    ForEach(importantEmailsNotifications) {
                        importantEmailsNotification in NotificationListView(notification: importantEmailsNotification, bodyColor: "importantBody", actionColor: "importantAction")
                    }
                    .onDelete(perform: deleteImportant)
                }
                .foregroundColor(Color.black)
                .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
            .navigationBarHidden(true)
        }
    }
    
    func deleteRegional(at offsets: IndexSet) {
        regionalNotifications.remove(atOffsets: offsets)
    }
    
    func deleteImportant(at offsets: IndexSet) {
        importantEmailsNotifications.remove(atOffsets: offsets)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
