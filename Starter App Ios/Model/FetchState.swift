//
//  FetchState.swift
//  Starter App Ios
//
//  Created by Abbas on 29/06/2024.
//

 
import Foundation

enum FetchState: Comparable {
  case start
  case isLoading
  case loadedAll
  case error(String)
}
