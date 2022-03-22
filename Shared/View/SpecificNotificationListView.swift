//
//  SpecificNotificationListView.swift
//  puroclean (iOS)
//
//  Created by Casuneanu Catalin on 07.03.2022.
//

import SwiftUI

struct SpecificNotificationListView: View {
    let notification: Notification
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            VStack {
                HStack {
                    Text(notification.title)
                        .fontWeight(.medium)
                        .padding()
                        .font(.body)
                        .lineLimit(nil)
                    Spacer()
                }
                Spacer()
                Text(notification.date)
                    .fontWeight(.medium)
            }
            .background(.white)
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 84,
                   maxHeight: 84,
                   alignment: .topLeading)
            
            VStack{
                Image(systemName: "star.fill")
            }
            .padding()
            .frame(minWidth: 0,
//                   maxWidth: .infinity,
                   minHeight: 84,
                   maxHeight: 84,
                   alignment: .center
            )
            .background(.white)
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 84,
               maxHeight: 84,
               alignment: .topLeading
        )
        .padding(0)
        .cornerRadius(16)
        .shadow(color: Color("drop"), radius: 6, x: 0, y: 3)
        .foregroundColor(.black)
    }
}

struct SpecificNotificationListView_Previews: PreviewProvider {
    static let timeSensitiveNotifications: [Notification] = Bundle.main.decode("RegionalNotifications.json")

    static var previews: some View {
    SpecificNotificationListView(notification: timeSensitiveNotifications[1])
        .previewLayout(.sizeThatFits)
        .padding()
}
}
