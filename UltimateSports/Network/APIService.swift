//
//  APIService.swift
//  UltimateSports
//
//  Created by Khavishini on 21/07/2024.
//

import Foundation

struct APIService {
    
    static let shared = APIService()
    
    func getTeams(completion: @escaping (Result<TeamsResponse, Error>) -> Void) {
        NetworkService.shared.fetchRequest(generalType: TeamsResponse.self,
                                           url: "api/v1/json/3/search_all_teams.php?l=English%20Premier%20League") { result in
            completion(result)
        }
    }
    
    func getEvents(season: String, completion: @escaping (Result<EventsResponse, Error>) -> Void) {
        NetworkService.shared.fetchRequest(generalType: EventsResponse.self,
                                           url: "api/v1/json/3/eventsround.php?id=4328&r=38&s=\(season)") { result in
            completion(result)
        }
    }
}
