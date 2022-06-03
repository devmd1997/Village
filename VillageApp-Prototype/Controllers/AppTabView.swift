//
//  TabView.swift
//  VillageApp-Prototype
//
//  Created by Devon Adams on 10/4/21.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                        Text("Home")
                }
            NetworkView()
                .tabItem {
                    Image(systemName: "bonjour")
                    Text("Network")
                }
            AddVillageView()
                .tabItem {
                    Image(systemName: "plus.app")
                    Text("Add Village")
                }
            Text("Heads Up")
                .tabItem {
                    Image(systemName: "bell")
                    Text("Heads Up")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
