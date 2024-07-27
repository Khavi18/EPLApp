//
//  TeamRowView.swift
//  UltimateSports
//
//  Created by Khavishini on 21/07/2024.
//

import SwiftUI

struct TeamRowView: View {
    
    var team: Teams? = nil
    
    var body: some View {
        HStack {
            
            AsyncImage(url:  URL(string: "\(team?.strBadge ?? "")/small")) { result in
                result.image?
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 100, height: 100)
            
            Spacer()
            VStack {
                Text(team?.strTeam ?? "Team Name")
                Spacer()
                Text(team?.strKeywords ?? "Team Keyword")
            }
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding(.horizontal, 20)
        .frame(height: 100)
        
        
    }
        
}

#Preview {
    TeamRowView()
}
