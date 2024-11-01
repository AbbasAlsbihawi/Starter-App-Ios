//
//  MatchStory.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

struct MatchStory: Codable, Identifiable {
    let id = UUID() // For SwiftUI List
    let matchId: String
    let homeTeam: Team
    let awayTeam: Team
    let cover: String
    let stories: [Story]
}
