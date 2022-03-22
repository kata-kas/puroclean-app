//
//  TimeSensitive.swift
//  puroclean
//
//  Created by Casuneanu Catalin on 05.03.2022.
//

import SwiftUI

struct TimeSensitiveView: View {
    
    @State var timeSensitiveNotifications: [Notification] = Bundle.main.decode("TimeSensitiveNotifications.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(timeSensitiveNotifications) {
                    timeSensitiveNotification in SpecificNotificationListView(notification: timeSensitiveNotification)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationBarHidden(true)
        }
    }
}

struct TimeSensitive_Previews: PreviewProvider {
    static var previews: some View {
        TimeSensitiveView()
    }
}
