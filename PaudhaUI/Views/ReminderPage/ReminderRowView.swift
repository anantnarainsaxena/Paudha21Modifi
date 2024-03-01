//
//  ReminderRowView.swift
//  PaudhaUI
//
//  Created by user1 on 13/02/24.
//

import SwiftUI

struct ReminderRowView: View {
    var reminder: Reminder

    var body: some View {
        HStack {
            Image(uiImage: reminder.image ?? UIImage(systemName: "photo")!) // Placeholder image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)

            Button(action: {
                // Toggle completion
            }) {
                Image(systemName: reminder.isCompleted ? "checkmark.circle.fill" : "circle")
            }
            .buttonStyle(BorderlessButtonStyle())

            Text(reminder.name)

            Spacer()

            NavigationLink(destination: ReminderDetailsView(reminder: reminder)) {
                            }
            .buttonStyle(BorderlessButtonStyle())
        }
    }
}
