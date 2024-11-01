//
//  Home.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

struct Home: View {
    @State private var colors:[Color]=[.red ,.green, .yellow,.orange]
    @State private var opacityEffect:Bool=false
    @State private var clipEdges:Bool=false
    @State private var responseData: ResponseData?

    var body: some View {
        NavigationStack {
//            ScrollView(.vertical){
            VStack(alignment: .center,  spacing:8) {
                
             
                    
                    if let data = responseData {
                        FeaturedMatchesListView(matches: data.featuredMatches)
                        MatchesStoryListView(matchesStories: data.matchesStories)
                        
                        List(data.matchesStories) { matchStory in
                            NavigationLink(destination: MatchListView(matchStory: matchStory)) {
                                VStack(alignment: .leading) {
                                    Text(matchStory.homeTeam.name)
                                        .font(.headline)
                                    Text("vs")
                                    Text(matchStory.awayTeam.name)
                                        .font(.headline)
                                }
                            }
                        }
                    } else {
                          DummyCardFeaturedMatchesList()
                           DummyCardMatchesStoryList()
                    }
////                
                    
                    
                if (responseData?.featuredMatches) != nil {
//
//                        
//                        ScrollView(.horizontal){
//                            LazyHStack(spacing: 0){
//                                ForEach(matchesStories){ matchesStory in
//                                    
//                                    if let url = URL(string: matchesStory.cover) {
//                                        AsyncImage(url: url) { image in
//                                            image
//                                            //                                            .resizable()
//                                                .aspectRatio(contentMode: .fit)
//                                                .frame(height: 200)
//                                                .padding(.horizontal,5)
//                                                .overlay(alignment: .center){
//                                                    HStack{
//                                                        if let url = URL(string: matchesStory.homeTeam.logo) {
//                                                            AsyncImage(url: url) { image in
//                                                                image
//                                                                //                                            .resizable()
//                                                                    .aspectRatio(contentMode: .fit)
////                                                                    .frame(height: 200)
//                                                                    .padding(.horizontal,5)
//                                                                    .overlay(alignment: .center){
//                                                                        HStack{
//                                                                            
//                                                                        }
//                                                                    }
//                                                            } placeholder: {
//                                                                ProgressView()
//                                                                    .padding(.horizontal,5)
//                                                            }
//                                                            
//                                                        }
//                                                    }
//                                                }
//                                        } placeholder: {
//                                            ProgressView()
//                                                .padding(.horizontal,5)
//                                        }
//                                        
//                                    }
//                                    
//                                    //                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                                    ////                                    .fill(color.gradient)
//                                    //                                    .padding(.horizontal,5)
//                                    //                                    .containerRelativeFrame(.horizontal)
//                                    
//                                    
//                                }
//                            }
//                            .scrollTargetLayout()
//                            .overlay(alignment: .bottom) {
//                                PagingIndicators(
//                                    activeTint: .white,
//                                    inActiveTint: .black.opacity(0.25),
//                                    opacityEffect: opacityEffect,
//                                    clipEdges: clipEdges
//                                )
//                            }
//                        }
//                        .scrollTargetBehavior(.viewAligned)
//                        .scrollIndicators(.hidden)
//                        .frame(height: 220)
//                        .safeAreaPadding(.vertical, 15)
//                        .safeAreaPadding(.horizontal, 25)
                         
                        
                        
                    } else {
                        Text("Loading...")
                    }
//                }
            }
            .onAppear {
                APIService.shared.fetchData { data in
                    DispatchQueue.main.async {
                        self.responseData = data
                    }
                }
            }
            .navigationTitle("Matches App")
            .padding(0)
//            .frame(height: 10)
//            .background(.red)
        }
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
    Home()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
