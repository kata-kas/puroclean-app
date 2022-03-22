//
//  NotificationListView.swift
//  puroclean (iOS)
//
//  Created by Casuneanu Catalin on 07.03.2022.
//

import SwiftUI

struct NotificationListView: View {
    let notification: Notification
    let bodyColor: String
    let actionColor: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            VStack {
                HStack {
                    Text(notification.title)
                        .fontWeight(.medium)
                    .padding()
                    Spacer()
                }
                Spacer()
            }
            .background(Color(bodyColor))
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 84,
                   maxHeight: 84,
                   alignment: .topLeading)
            
            VStack{
                Text(notification.date)
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "star.fill")
            }
            .padding()
            .frame(minWidth: 0,
//                   maxWidth: .infinity,
                   minHeight: 84,
                   maxHeight: 84,
                   alignment: .topLeading
            )
            .background(Color(actionColor))
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 84,
               maxHeight: 84,
               alignment: .topLeading
        )
        .padding(0)
        .cornerRadius(16)
        .foregroundColor(.white)
    }
}

struct NotificationListView_Previews: PreviewProvider {
    static let timeSensitiveNotifications: [Notification] = Bundle.main.decode("RegionalNotifications.json")
    
    static var previews: some View {
        NotificationListView(notification: timeSensitiveNotifications[1], bodyColor: "timeSensitiveBody", actionColor: "timeSensitiveAction")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
