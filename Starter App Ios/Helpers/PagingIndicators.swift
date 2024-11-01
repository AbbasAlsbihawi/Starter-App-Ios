//
//  PagingIndicators.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI


import SwiftUI

struct PagingIndicators: View {
     var activeTint:Color = .primary
    var inActiveTint:Color = .primary.opacity(0.15)
     var opacityEffect:Bool = false
     var clipEdges:Bool = false
    var body: some View {
        GeometryReader {
            let width=$0.size.width
            if let scrollViewWidth = $0.bounds(of:.scrollView(axis: .horizontal))?.width , scrollViewWidth > 0 {
                let minx = $0.frame (in: .scrollView (axis: .horizontal)).minX
                let totalPages=Int(width/scrollViewWidth)
                
                // Progress
                let freeProgress = -minx / scrollViewWidth
                let clippedProgress = min(max (freeProgress, 0.0), CGFloat (totalPages - 1))
                let progress = clipEdges ? clippedProgress : freeProgress
                // Indexes
                let activeIndex = Int(progress)
                let nextIndex = Int (progress.rounded (.awayFromZero))
                let indicatorProgress = progress - CGFloat (activeIndex)
                // Indicator Width's (Current & Upcoming)
                let currentPageWidth = 18 - (indicatorProgress * 18)
                let nextPageWidth = indicatorProgress * 18
                
                HStack(spacing: 10) {
                    ForEach(0..<totalPages,id: \.self){ index in
                        Circle()
//                            .fill(.clear)
//                            .frame(width: 8,height: 8)
                            .fill(.clear) .frame(width: 8 + (activeIndex == index ? currentPageWidth : nextIndex == index ? nextPageWidth: 0), height: 8) .overlay {
                                ZStack {
                                    Capsule()
                                        .fill(inActiveTint)
                                    Capsule()
                                        .fill(activeTint)
                                        .opacity(opacityEffect ? 1 : (activeIndex == index ? 1 - indicatorProgress  : nextIndex == index ? indicatorProgress : 0))
                                }
                            }
                    }
                }
                .frame(width: scrollViewWidth)
//                .overlay(content: {
//                    Text("\(activeIndex) \(nextIndex)")
//                        .offset(y:-100)
//                })
                .offset(x:-minx)
            }
        }
        .frame(height:30)
    }
}

#Preview {
    PagingIndicators(activeTint: Color.white,inActiveTint: Color.red ,opacityEffect: true, clipEdges: true)
}
