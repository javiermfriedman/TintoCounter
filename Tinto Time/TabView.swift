//
//  TabBarView.swift
//  Tinto Time
//
//  Created by Javier Friedman on 3/5/25.
//

import SwiftUI

struct TabBarView: View { // ✅ Renamed to avoid conflict
    var body: some View {
        TabView {
            PlusView()
                .tabItem {
                    Image(systemName: "homepod.and.homepod.mini.badge.plus")
                    Text("New Drink")
                }
                .background(Color.clear)

            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Players")
                }
                .background(Color.clear)

            ListView()
                .tabItem {
                    Image(systemName: "wineglass")
                    Text("Leaderboard")
                }
                .background(Color.clear)
        }
        .accentColor(.black)
    }
}

#Preview {
    TabBarView()
}
