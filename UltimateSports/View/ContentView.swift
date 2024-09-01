//
//  ContentView.swift
//  UltimateSports
//
//  Created by Khavishini on 20/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TeamsView()
                .tabItem {
                    Text("Teams")
                }
            
            SeasonsView()
                .tabItem {
                    Text("Seasons")
                }
            
            TablesView()
                .tabItem {
                    Text("Table")
                }
            
            AboutsView()
                .tabItem {
                    Text("About")
                }
        }
    }
}

#Preview {
    ContentView()
}
