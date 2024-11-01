//
//  EndedMatch.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI
import Foundation

struct EndedMatch: Codable, Identifiable {
    let venueName: String?
    let homeTeamId: String
    let homeTeamName: String
    let homeTeamLogoId: String
    let homeTeamLogo: String
    let homeTeamPlayerImageId: String?
    let homeTeamPlayerImage: String?
    let awayTeamId: String
    let awayTeamName: String
    let awayTeamLogoId: String
    let awayTeamLogo: String
    let awayTeamPlayerImageId: String?
    let awayTeamPlayerImage: String?
    let league: League
    let startTime: String
    let state: Int
    let matchResult: MatchResult
    let isPinned: Bool
    let priority: Int
    let id: String
    let createdAt: String
}



struct MatchResult: Codable {
    let home: Int
    let away: Int
}

