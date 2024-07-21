//
//  TeamModel.swift
//  UltimateSports
//
//  Created by Khavishini on 21/07/2024.
//

import Foundation

struct TeamsResponse: Codable {
    let teams: [Teams]?
}

struct Teams : Codable {
    let idTeam : String?
    let strTeam : String?
    let strTeamAlternate : String?
    let intFormedYear : String?
    let strStadium : String?
    let strKeywords : String?
    let strLocation : String?
    let strWebsite : String?
    let strFacebook : String?
    let strTwitter : String?
    let strInstagram : String?
    let strDescriptionEN : String?
    let strBadge : String?
    let strLogo : String?
    let strBanner : String?
    let strEquipment : String?
    let strYoutube : String?
}
