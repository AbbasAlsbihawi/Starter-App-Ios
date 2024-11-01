//
//  Settings.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI
 

struct Setting: View {
    @State private var colors:[Color]=[.red ,.green, .yellow,.orange]
    @State private var opacityEffect:Bool=false
    @State private var clipEdges:Bool=false
    @State private var responseData: HomeResponseData?
    
 
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
           
               .onAppear {
//                   viewModel.fetchHome(for: viewModel.search)
               }

      
        
        
//        NavigationView {
////            ScrollView(.vertical){
//            VStack(alignment: .center,  spacing:8) {
//                  
//                    if let data = responseData {
//                        
//                        ScrollView(.horizontal){
//                            LazyHStack(spacing: 16){
//                                ForEach(data.advertisementImgs){ featuredMatch in
//                                    if let url = URL(string: "\(BASE_URL)/uploads/\(featuredMatch.img)") {
//                                        AsyncImage(url: url) { image in
//                                            
////                                            ParallaxImageView(maximumMovement: 10 ,usesFullWidth: true) { size in
//                                                image
//                                                    .resizable()
//                                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                                                    .frame(width: 300 )
//                                                   // Adjust the value to your desired corner radius
//                                                
////                                            }
////                                            .padding(.horizontal,5)
//                                                
//                                        }
//                                    placeholder: {
//                                        AnimatedBorderCardViewHorizontal()
//                                            .frame(width: 300 )
////                                            .containerRelativeFrame(.horizontal)
//                                        }
//                                    }
//                                    
//                                }
//                            }
//                            .scrollTargetLayout()
//                            .overlay(alignment: .bottom) {
//                                PagingIndicators(
//                                    activeTint: appTint.opacity(0.95),
//                                    inActiveTint: appTint.opacity(0.15),
//                                    opacityEffect: opacityEffect,
//                                    clipEdges: clipEdges
//                                )
//                            }
//                        }
//                        .scrollTargetBehavior(.viewAligned)
//                        .scrollIndicators(.hidden)
//                        .frame(height: 200)
////                        .safeAreaPadding(.vertical, 15)
//                        .safeAreaPadding(.horizontal, 16)
//                   
//                        
//                        List(data.advertisementImgs) { matchStory in
//                                                       VStack(alignment: .leading) {
//                                                           Text(matchStory.title)
//                                                              .font(.headline)
//                                                          Text("vs")
//                                                           Text(matchStory.description ?? "")
//                                                              .font(.headline)
//                                                      }
//                      
//                                              }
//                        
//                    } else {
//                          DummyCardFeaturedMatchesList()
//                DummyCardMatchesStoryList()
//                    }
////
//                    
//                    
////                    if let matchesStories = responseData?.voyages {
////  
////                        
////                        List(matchesStories) { matchStory in
////                                 VStack(alignment: .leading) {
////                                     Text(matchStory.voyageDetails.title)
////                                        .font(.headline)
////                                    Text("vs")
////                                    Text(matchStory.voyageDetails.description)
////                                        .font(.headline)
////                                }
////                           
////                        }
////                    } else {
////                        Text("Loading...")
////                    }
////                }
//            }
//            .onAppear {
//                APIService.shared.fetchHomeData { data in
//                    DispatchQueue.main.async {
//                        self.responseData = data
//                    }
//                }
//            }
////            .navigationTitle("Matches App")
////            .padding(0)
////            .frame(height: 10)
////            .background(.red)
//        }
    }
    
    // Dummy Card View
    @ViewBuilder
    func DummyCardFeaturedMatchesList() -> some View {
        ScrollView(.horizontal){
            HStack(){
                ForEach(1...50, id: \.self) { count in
                    VStack(alignment: .leading ,  spacing: 6,   content: {
                        AnimatedBorderCardViewHorizontal()
                            .frame(height: 200)
                    } ).foregroundStyle(.tertiary)
                        .frame(width: 250)
                }
                
            }
        }
        .scrollTargetBehavior(.viewAligned)
        .scrollIndicators(.hidden)
    }
    // Dummy Card View
    @ViewBuilder
    func DummyCardMatchesStoryList() -> some View {
        ScrollView(.horizontal){
            HStack(){
                ForEach(1...50, id: \.self) { count in
                    VStack(alignment: .leading ,  spacing: 6,   content: {
                        AnimatedBorderCardViewHorizontal()
                            .frame(height: 200)
                    } ).foregroundStyle(.tertiary)
                        .frame(width: 110)
                }
                
            }
        }
        .scrollTargetBehavior(.viewAligned)
        .scrollIndicators(.hidden)
    }
}
 
#Preview {
    Setting()
//        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
