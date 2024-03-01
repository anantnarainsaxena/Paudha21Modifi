//
//  SideMenuView.swift
//  PaudhaUI
//
//  Created by user1 on 19/02/24.
//

import SwiftUI
import UIKit

struct SideMenuView: View {
    @Binding var isSideMenuPresented: Bool

    var body: some View {
        List {
            Section(header: Text("Menu")) {
                NavigationLink(destination: SettingsView()) {
                    Label("Settings", systemImage: "gear")
                }

                NavigationLink(destination: FeedbackView()) {
                    Label("Give Feedback", systemImage: "message")
                }

                NavigationLink(destination: ContactAndSocialView()) {
                    Label("Contact & Social", systemImage: "person")
                }

                // Add more sections as needed
            }
        }
        .listStyle(SidebarListStyle())
        .onAppear {
            isSideMenuPresented = true
        }
    }
}
