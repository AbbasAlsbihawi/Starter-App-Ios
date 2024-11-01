//
//  SkeletonCardView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI
import SwiftUI

struct SkeletonCardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.3))
            .frame(height: 200)
            .padding(.horizontal, 5)
            .shimmering() // Apply shimmering effect if desired
    }
}

// Shimmering effect extension (optional)
//extension View {
//    func shimmering() -> some View {
//        self
//            .modifier(Shimmer())
//    }
//}

//struct Shimmer: ViewModifier {
//    @State private var phase: CGFloat = 0
//
//    func body(content: Content) -> some View {
//        content
//            .overlay(
//                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), Color.white.opacity(0.1), Color.white.opacity(0.4)]),
//                               startPoint: .topLeading,
//                               endPoint: .bottomTrailing)
//                    .blendMode(.overlay)
//                    .mask(
//                        Rectangle()
//                            .fill(
//                                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.3), Color.black.opacity(0.1), Color.black.opacity(0.3)]),
//                                               startPoint: .topLeading,
//                                               endPoint: .bottomTrailing)
//                            )
//                            .rotationEffect(.degrees(30))
//                            .offset(x: phase)
//                    )
//                    .onAppear {
//                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
//                            phase += 600
//                        }
//                    }
//            )
//    }
//}

#Preview {
    SkeletonCardView()
}
