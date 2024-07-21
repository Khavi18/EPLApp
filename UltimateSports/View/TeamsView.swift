//
//  TeamsView.swift
//  UltimateSports
//
//  Created by Khavishini on 21/07/2024.
//

import SwiftUI

struct TeamsView: View {
    
    @StateObject private var teamsVM = TeamsViewModel()
    
    var body: some View {
        VStack {
            Text("English Premier League")
                .font(.title)
                .fontWeight(.bold)
            
            ScrollView(.vertical) {
                VStack {
                    
                    Spacer()
                    ForEach(teamsVM.teams, id: \.idTeam) { item in
                        TeamRowView(team: item)
                        Divider()
                    }
                }
            }
            
        }
        .onAppear(perform: {
            self.teamsVM.getTeams()
        })
    }
}

#Preview {
    TeamsView()
}
