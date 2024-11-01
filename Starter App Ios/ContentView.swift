//
//  ContentView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFirstTime") private var isFirstTime:Bool=true
    @State  private var activeTab:Tab = .home
    
    var body: some View {
        TabView(selection: $activeTab,
                content:  {
            HomeView()
                .tag(Tab.home)
                .tabItem { Tab.home.tabContent }
            Setting()
                 .tag(Tab.setting)
                 .tabItem { Tab.setting.tabContent }
        })
        .tint(appTint)
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen().interactiveDismissDisabled()
        })
        
    } 
    
}

#Preview {
    ContentView()
}
