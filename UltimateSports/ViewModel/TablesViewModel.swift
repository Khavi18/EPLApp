//
//  TablesViewModel.swift
//  UltimateSports
//
//  Created by Khavishini on 31/08/2024.
//

import Foundation

@MainActor
class TablesViewModel: ObservableObject {
    @Published var table: [LookUpTable] = []
    
    func getTable(in season: String) {
        APIService.shared.getLookUpTable(season: season) { [weak self] result in
            switch result {
            case .success(let data):
                self?.table = data.table ?? []
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
