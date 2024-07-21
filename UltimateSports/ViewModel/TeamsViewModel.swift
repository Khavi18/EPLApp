//
//  TeamsViewModel.swift
//  UltimateSports
//
//  Created by Khavishini on 21/07/2024.
//

import Foundation

@MainActor
class TeamsViewModel: ObservableObject {
    @Published var teams: [Teams] = []
    
    func getTeams() {
        APIService.shared.getTeams { [weak self] result in
            switch result {
            case .success(let data):
                self?.teams = data.teams ?? []
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
