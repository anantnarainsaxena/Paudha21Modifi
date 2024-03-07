//
//  ReminderDetailsView.swift
//  PaudhaUI
//
//  Created by user1 on 13/02/24.
//

import SwiftUI


struct ReminderDetailsView: View {
    var reminder: Reminder

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(uiImage: reminder.image ?? UIImage(systemName: "photo")!) // Placeholder image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()

            Text("Location: \(reminder.location)")
            Text("Action: \(reminder.action)")
            Text("Repeat Options:")
            ForEach(reminder.repeatOptions, id: \.self) { date in
                Text("\(date)")
            }
            Text("Time: \(reminder.time)")
            Text("Last Watering: \(reminder.lastWatering)")
        }
        .padding()
        .navigationBarTitle(reminder.name)
//        .background( LinearGradient(gradient: Gradient(colors: [Color(red: 0.9686, green: 0.8824, blue: 0.8431), Color(red: 240/255.0, green: 255/255.0, blue: 241/255.0)]),
//                                     startPoint: .topLeading,
//                                     endPoint: .bottomTrailing
//                                 ))
    }
}

