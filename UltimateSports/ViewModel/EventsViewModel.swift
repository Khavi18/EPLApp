//
//  EventsViewModel.swift
//  UltimateSports
//
//  Created by Khavishini on 27/07/2024.
//

import Foundation

@MainActor
class EventsViewModel: ObservableObject {
    @Published var events: [Event] = []
    
    func getEvents(in season: String) {
        APIService.shared.getEvents(season: season) { [weak self] result in
            switch result {
            case .success(let data):
                self?.events = data.events ?? []
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
