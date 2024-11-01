//
//  Tab.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

enum Tab: String {
    case home = "Home"
    case search = "Filter"
    case charts = "Charts"
    case setting = "Setting"
    
    @ViewBuilder
    var tabContent:some View{
        switch self {
        case .home:
            Image(systemName: "calendar")
            Text(self.rawValue)
        case .search:
            Image(systemName: "magnifyingglass")
            Text(self.rawValue)
        case .charts:
            Image(systemName: "chart.bar.xaxis")
            Text(self.rawValue)
        case .setting:
            Image(systemName: "gearshape")
            Text(self.rawValue)
        }
    }
}

 
