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
            
            Text("Events")
                .tabItem {
                    Text("Events")
                }
            
            Text("Table")
                .tabItem {
                    Text("Table")
                }
            
            Text("About")
                .tabItem {
                    Text("Abouts")
                }
        }
    }
}

#Preview {
    ContentView()
}
