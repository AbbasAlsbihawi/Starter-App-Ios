//
//  AdvertisementImgsListView.swift
//  Starter App Ios
//
//  Created by Abbas on 29/06/2024.
//

import SwiftUI

struct AdvertisementImgsListView: View {
    @ObservedObject var viewModel: AdvertisementImgsListViewModel

    var body: some View {
        List {
            if let images = viewModel.responseData?.advertisementImgs {
                ForEach(images) { advertisementImg in
                    NavigationLink(destination: Text(advertisementImg.img)) {
                        Text(advertisementImg.img)
                    }
                    .buttonStyle(.plain)
                }
            }else{
                Text("loading...\(viewModel.page)")
            } 
            

            switch viewModel.state {
            case .start:
                Color.clear
                    .onAppear {
                        viewModel.loadMore()
                    }
            case .isLoading:
                ProgressView()
                    .progressViewStyle(.circular)
                    .frame(maxWidth: .infinity)
            case .loadedAll:
                EmptyView()
            case .error(let message):
                Text(message)
                    .foregroundColor(.red)
            }
        }
        .listStyle(.plain)
    }
}
