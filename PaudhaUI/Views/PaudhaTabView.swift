//
//  PaudhaTabView.swift
//  PaudhaUI
//
//  Created by Anant Narain on 16/01/24.
//

//
//  PaudhaTabView.swift
//  Paudha
//
//  Created by Anant Narain on 09/01/24.
//

import SwiftUI

struct PaudhaTabView: View {
    var body: some View {
        TabView{
            Home()
                .tabItem { Image(systemName: "house")
                Text("Home")}
            RemindersView()
                .tabItem { Image(systemName: "list.clipboard")
                Text("Reminder")}
            SearchView()
                .tabItem { Image(systemName: "magnifyingglass")
                Text("Search")}
            ChatView()
                .tabItem { Image(systemName: "camera.macro")
                Text("Pixxie")}
        }
        }
        
    }


#Preview {
    PaudhaTabView()
}
