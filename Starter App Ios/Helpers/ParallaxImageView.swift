//
//  ParallaxImageView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI


struct ParallaxImageView<Content:View> : View{
    
    var maximumMovement: CGFloat = 100
    var usesFullWidth: Bool = false
    
    
    @ViewBuilder var content:(CGSize)->Content
    var body: some View{
        GeometryReader{
            
            let size=$0.size
            /// Movement Animation Properties
             let minY = $0.frame(in: .scrollView(axis: .vertical)).minY
             let scrollViewHeight = $0.bounds (of: .scrollView)?.size.height ?? 0
            let maximumMovement = min (maximumMovement, (size.height * 0.35))
            let stretchedSize: CGSize = .init(width: size.width, height: size.height + maximumMovement)
            let progress = minY / scrollViewHeight
            let cappedProgress = max(min(progress, 1.0), -1.0)
            let movementOffset = cappedProgress * -maximumMovement
            
            content(size)
                .offset(y: movementOffset)
                .frame(width: stretchedSize.width, height: stretchedSize.height)
                .frame(width: size.width, height: size.height)
//                .overlay(alignment:.bottom) {
//                    Text("\(cappedProgress)")
//                        .font (.title)
//                        .foregroundStyle(.white)
//                }
                .clipped()
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .containerRelativeFrame(usesFullWidth ? [.horizontal] : [])
    }
    
}
 
