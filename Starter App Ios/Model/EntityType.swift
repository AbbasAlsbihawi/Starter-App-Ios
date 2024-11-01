//
//  EntityType.swift
//  Starter App Ios
//
//  Created by Abbas on 29/06/2024.
//


import Foundation

enum EntityType: String, Identifiable, CaseIterable {
  case all
  case album
  case song
  case movie

  var id: String {
    return self.rawValue
  }

  var name: String {

    switch self {
    case .all:
      return "All"
    case .album:
      return "Albums"
    case .song:
      return "Songs"
    case .movie:
      return "Movies"
    }

  }

}
