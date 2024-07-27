//
//  EventModel.swift
//  UltimateSports
//
//  Created by Khavishini on 27/07/2024.
//

import Foundation

struct EventsResponse: Codable {
    let events: [Event]?
}

struct Event: Codable {
    let idEvent: String?
    let idAPIfootball: String?
    let strEvent: String?
    let strHomeTeam: String?
    let strAwayTeam: String?
    let intHomeScore: String?
    let intRound: String?
    let intAwayScore: String?
    let strTimestamp: String?
    let dateEvent: String?
    let strTime: String?
    let idHomeTeam: String?
    let idAwayTeam: String?
    let strHomeTeamBadge: String?
    let strAwayTeamBadge: String?
    let strVenue: String?
    let strCountry: String?
    let strPoster: String?
    let strSquare: String?
    let strThumb: String?
    let strBanner: String?
    let strVideo: String?
}
