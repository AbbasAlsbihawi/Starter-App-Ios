//
//  FeaturedMatch.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

import Foundation

struct FeaturedMatch: Identifiable, Codable {
    var id: String
    var coverId: String
    var cover: String
    var channels: [Channel]
    var league: League
    var startTime: String
    var state: Int
    var matchResult: MatchResult
    var createdAt: String
}
