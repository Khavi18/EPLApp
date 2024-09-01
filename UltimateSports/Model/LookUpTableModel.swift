//
//  LookUpTableModel.swift
//  UltimateSports
//
//  Created by Khavishini on 31/08/2024.
//

import Foundation

struct LookUpTableResponse: Codable {
    let table: [LookUpTable]?
}

struct LookUpTable: Codable {
    let idStanding: String?
    let intRank: String?
    let idTeam: String?
    let strTeam: String?
    let strBadge: String?
    let idLeague: String?
    let strLeague: String?
    let strDescription: String?
    let intPlayed: String?
    let intWin: String?
    let intLoss: String?
    let intDraw: String?
    let intGoalsFor: String?
    let intGoalsAgainst: String?
    let initGoalDifference: String?
    let intPoints: String?
    let dateUpdated: String?
}
