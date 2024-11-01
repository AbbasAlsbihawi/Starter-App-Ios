//
//  Story.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI
import Foundation

struct Story: Identifiable, Codable {
    let id: String
    let title: String
    let content: String
    let duration: Int
    let contentId: String
}

