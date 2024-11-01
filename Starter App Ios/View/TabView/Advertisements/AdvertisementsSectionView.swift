//
//  AdvertisementsSectionView.swift
//  Starter App Ios
//
//  Created by Abbas on 05/07/2024.
//

import SwiftUI

struct AdvertisementsSectionView: View {
    @State private var opacityEffect:Bool=false
    @State private var clipEdges:Bool=false
    
    let advertisementImgs: [AdvertisementImg]
    
    var body: some View {
        
        ScrollView(.horizontal){
            LazyHStack(spacing: 16){
                
            ForEach(advertisementImgs) { advertisementImg in
              NavigationLink {
//                SongDetailView(song: song)
//                  advertisementImg.img
                  Text("hi")
             
                  
              } label: {
//                SongRowView(song: song)
//                  .frame(width: 300)
               
                  
                  if let url = URL(string: "\(BASE_URL)/uploads/\(advertisementImg.img)") {
                      AsyncImage(url: url) { image in
                          
                          ParallaxImageView(maximumMovement: 10 ,usesFullWidth: true) { size in
                              image
                                  .resizable()
                                  .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                  .frame(width:size.width,  height: size.height)
                                 // Adjust the value to your desired corner radius
                              
                          }
                          .padding(.horizontal,5)
                              
                      }
                  placeholder: {
                      AnimatedBorderCardViewHorizontal()
                          .containerRelativeFrame(.horizontal)
                      }
                  }
              }
              .buttonStyle(.plain)

            }

          }
//          .padding([.horizontal])

          .scrollTargetLayout()
          .overlay(alignment: .bottom) {
              PagingIndicators(
                  activeTint: appTint.opacity(0.95),
                  inActiveTint: appTint.opacity(0.15),
                  opacityEffect: opacityEffect,
                  clipEdges: clipEdges
              )
          }
      }
      .scrollTargetBehavior(.viewAligned)
      .scrollIndicators(.hidden)
      .frame(height: 220)
      .safeAreaPadding(.vertical, 15)
      .safeAreaPadding(.horizontal, 15)
      }
    }

#Preview {
    AdvertisementsSectionView(
    advertisementImgs: [
        AdvertisementImg(id: "22160cce-11c3-4d8f-89be-17cd24f3b22e", img: "cd4a1f6834af10d94105424f2a5c9521018.jpg", title: "شركة مدار النجوم ", description: Optional("1"), type: "travelCompany", voyageId: nil, landTransportId: nil, hotelId: nil, travelCompanyId: Optional("dabde7dd-7849-4206-abce-092583df3285"), driverId: nil, createdAt: "2024-04-29T14:59:18.038Z", updatedAt: "2024-06-30T19:56:12.080Z")
    ]
    )
}
