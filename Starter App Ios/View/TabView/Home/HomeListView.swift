//
//  HomeListView.swift
//  Starter App Ios
//
//  Created by Abbas on 05/07/2024.
//

import SwiftUI

struct HomeListView: View {
    @ObservedObject var advertisementImgsListViewModel : AdvertisementImgsListViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack {
                if let advertisementImgs = advertisementImgsListViewModel.responseData?.advertisementImgs {
                    AdvertisementsSectionView( advertisementImgs: advertisementImgs)
                }
                else{
                    Text("error list ..")
                }
            }
        }
        .onAppear(){
            advertisementImgsListViewModel.loadMore()
        }
        
    }
}

#Preview {
    HomeListView(
    advertisementImgsListViewModel: AdvertisementImgsListViewModel()
    )
}
