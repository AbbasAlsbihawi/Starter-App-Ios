//
//  Highlight.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI
import Foundation

struct Highlight: Codable, Identifiable {
    let id: String
    let contentId: String
    let content: String
    let duration: Int
    let coverId: String
    let cover: String
    let matchId: String
    let isPinned: Bool
    let title: String
    let createdAt: String
}
