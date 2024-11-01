//
//  SkeletonCardsView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

struct SkeletonCardsView: View {
    var body: some View {
        VStack {
                    Cards()
                    // Add more Cards() calls or other UI components
                }
    }
    
    @ViewBuilder
        func Cards() -> some View {
            BorderedCardViews()
            SkeletonCardViews()
        }
}

#Preview {
    AnimatedBorderCardViewHorizontal()
}

import SwiftUI

//struct BorderedCardView: View {
//    var body: some View {
//        RoundedRectangle(cornerRadius: 10)
//            .stroke(Color.gray, lineWidth: 1)
//            .background(
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.white)
//            )
//            .frame(height: 200)
//            .padding(.horizontal, 5)
//    }
//}

 

//#Preview {
//    BorderedCardView()
//}





//import SwiftUI

//struct SkeletonCardViews: View {
//    var body: some View {
//        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.gray.opacity(0.3))
//            .frame(height: 200)
//            .padding(.horizontal, 5)
//            .shimmering()
//    }
//}

// Shimmering effect extension (optional)
//extension View {
//    func shimmering() -> some View {
//        self
//            .modifier(Shimmer())
//    }
//}
//
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


struct BorderedCardViews: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray, lineWidth: 1)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
            )
            .frame(height: 200)
            .padding(.horizontal, 5)
    }
}

struct SkeletonCardViews: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.3))
            .frame(height: 200)
            .padding(.horizontal, 5)
            .shimmering()
    }
}

extension View {
    func shimmering() -> some View {
        self
            .modifier(Shimmer())
    }
}

struct Shimmer: ViewModifier {
    @State private var phase: CGFloat = 0

    func body(content: Content) -> some View {
        content
            .overlay(
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), Color.white.opacity(0.1), Color.white.opacity(0.4)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .blendMode(.overlay)
                    .mask(
                        Rectangle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.3), Color.black.opacity(0.1), Color.black.opacity(0.3)]),
                                               startPoint: .topLeading,
                                               endPoint: .bottomTrailing)
                            )
                            .rotationEffect(.degrees(30))
                            .offset(x: phase)
                    )
                    .onAppear {
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                            phase += 600
                        }
                    }
            )
    }
}




import SwiftUI

struct AnimatedBorderCardView: View {
    @State private var phase: CGFloat = 0

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(
                LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.7), Color.gray.opacity(0.4), Color.gray.opacity(0.7)]),
                               startPoint: .leading,
                               endPoint: .trailing),
                lineWidth: 3
            )
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.3))
                    .mask(
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), Color.white.opacity(0.1), Color.white.opacity(0.4)]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                            .rotationEffect(.degrees(30))
                            .offset(x: phase)
                    )
                    .onAppear {
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                            phase += 600
                        }
                    }
            )
            .frame(height: 200)
            .padding(.horizontal, 5)
    }
}

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            AnimatedBorderCardView()
//            // Add more AnimatedBorderCardView() instances or other UI components
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


 

struct AnimatedBorderCardViews: View {
    @State private var phase: CGFloat = 0
    @State private var borderWidth: CGFloat = 0

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(
                LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.7), Color.gray.opacity(0.4), Color.gray.opacity(0.7)]),
                               startPoint: .leading,
                               endPoint: .trailing),
                lineWidth: borderWidth
            )
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.3))
                    .mask(
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), Color.white.opacity(0.1), Color.white.opacity(0.4)]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                            .rotationEffect(.degrees(30))
                            .offset(x: phase)
                    )
                    .onAppear {
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                            phase += 600
                        }
                        withAnimation(.easeInOut(duration: 1)) {
                            borderWidth = 2
                        }
                    }
            )
            .frame(height: 200)
            .padding(.horizontal, 5)
    }
}

 
struct AnimatedBorderCardViewss: View {
    @State private var phase: CGFloat = 0
    @State private var borderWidth: CGFloat = 0

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(
                LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.7), Color.gray.opacity(0.4), Color.gray.opacity(0.7)]),
                               startPoint: .top,
                               endPoint: .bottom),
                lineWidth: borderWidth
            )
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.3))
                    .mask(
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), Color.white.opacity(0.1), Color.white.opacity(0.4)]),
                                       startPoint: .top,
                                       endPoint: .bottom)
                            .rotationEffect(.degrees(30))
                            .offset(y: phase)
                    )
                    .onAppear {
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                            phase += 600
                        }
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: true)) {
                            borderWidth = 2
                        }
                    }
            )
            .frame(height: 200)
            .padding(.horizontal, 5)
    }
}



struct AnimatedBorderCardViewHorizontal: View {
    @State private var phase: CGFloat = -300
    @State private var borderWidth: CGFloat = 0

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(
                LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.7), Color.white.opacity(0.4), Color.gray.opacity(0.7)]),
                               startPoint: .leading,
                               endPoint: .trailing),
                lineWidth: borderWidth
            )
            .background(
                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.white)
                    .foregroundStyle(.tertiary)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white.opacity(0.5))
                    .mask(
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.0), Color.white.opacity(0.6), Color.white.opacity(0.0)]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                            .rotationEffect(.degrees(0))
                            .offset(x: phase)
                            .frame(width: 270)
                    )
                    .onAppear {
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                            phase += 600
                        }
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: true)) {
                            borderWidth = 1
                        }
                    }
            )
//            .frame(height: 200)
//            .padding(.horizontal, 5)
    }
}
