//
//  SwiftUIView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI
import Foundation
 
struct League: Identifiable, Codable {
    let id: String
    let name: String
    let cover: String
    let coverId: String
    let logo: String
    let logoId: String
}
