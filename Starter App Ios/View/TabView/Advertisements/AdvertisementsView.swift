//
//  AdvertisementsView.swift
//  Starter App Ios
//
//  Created by Abbas on 05/07/2024.
//

import SwiftUI

struct AdvertisementsView: View {
    
    @State private var search: String = ""
    @StateObject private var viewModel = AdvertisementImgsListViewModel()
   

    var body: some View {
        
        NavigationStack {
            Group {
                AdvertisementImgsListView(viewModel: viewModel)
            }
            .searchable(text: $viewModel.search)
            .navigationTitle("Advertisements")
        }
        
    }
}

#Preview {
    AdvertisementsView()
}
