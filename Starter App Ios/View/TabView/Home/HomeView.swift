//
//  HomeView.swift
//  Starter App Ios
//
//  Created by Abbas on 05/07/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var advertisementImgsListViewModel = AdvertisementImgsListViewModel()
    

    var body: some View {
        NavigationStack{
            VStack {
                HomeListView(advertisementImgsListViewModel:advertisementImgsListViewModel) 
            }
        }
    }
}

#Preview {
    HomeView()
}
