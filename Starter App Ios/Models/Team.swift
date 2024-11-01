//
//  Team.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI
import Foundation

struct Team: Identifiable, Codable {
    let id: String
    let name: String
    let logoId: String
    let logo: String
    let code: String?
    let country: String?
    let playerImageId: String?
    let playerImage: String?
}
