//
//  HomeData.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

import Foundation

struct ResponseData: Codable {
    let ad: String?
    let matchesStories: [MatchStory]
    let endedMatches: [ EndedMatch]
    let highlights: [Highlight]
    let featuredMatches: [FeaturedMatch]
}

 
