//
//  NotificationDetail.swift
//  puroclean (iOS)
//
//  Created by Casuneanu Catalin on 07.03.2022.
//

import SwiftUI

struct NotificationDetail: View {
    let notification: Notification
    
    var body: some View {
        VStack {
                VStack {
                    HStack {
                        Text(notification.title)
                            .fontWeight(.medium)
                            .padding()
                            .font(.body)
                            .lineLimit(nil)
                        Image(systemName: "star.fill")
                    }
                    Text(notification.date)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .frame(alignment: .leading)
                    Divider()
                    Text(notification.body)
                        .foregroundColor(.gray)
                        .font(.body)
                        .padding()
                }
                .background(.white)
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 84,
                       alignment: .topLeading)
            
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 84,
                   alignment: .topLeading
            )
            .padding()
            .cornerRadius(20)
            .shadow(color: Color("drop"), radius: 6, x: 0, y: 3)
        .foregroundColor(.black)
        }
    }
}

struct NotificationDetail_Previews: PreviewProvider {
    static let timeSensitiveNotifications: [Notification] = Bundle.main.decode("RegionalNotifications.json")

    static var previews: some View {
    NotificationDetail(notification: timeSensitiveNotifications[1])
}
}
