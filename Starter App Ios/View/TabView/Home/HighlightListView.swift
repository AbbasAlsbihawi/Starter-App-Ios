//
//  HighlightListView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI 
import AVKit

struct HighlightListView: View {
    var highlight: Highlight
    @State private var player: AVPlayer?
    
    var body: some View {
        VStack {
            Text(highlight.title)
                .font(.largeTitle)
                .padding()
            
            if let url = URL(string: highlight.cover) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                } placeholder: {
                    ProgressView()
                }
            }
            
            if let videoURL = URL(string: highlight.content) {
                CustomVideoPlayer(player: $player)
                    .frame(height: 200)
                    .onAppear {
                        player = AVPlayer(url: videoURL)
                    }
            }
            
            HStack {
                Button(action: {
                    player?.play()
                }) {
                    Text("Play")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Button(action: {
                    player?.pause()
                }) {
                    Text("Stop")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
        .padding()
        .navigationTitle("Highlight Details")
    }
}

#Preview {
    HighlightListView(highlight: Highlight(
               id: "1d294209-6d4e-4fa6-b8ef-3f2d7d6ab9a1",
               contentId: "b0ddaae8-52a0-4ad0-a40d-aa61a7339bf9.mp4",
               content: "https://image.var-live.tv/var/b0ddaae8-52a0-4ad0-a40d-aa61a7339bf9.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=7232d5a4886cca6986966af7aa5094e9e501f1a6e9b20e826f96d61aeacda43f",
               duration: 295730,
               coverId: "56d57ce6-74a6-4f1e-b574-b98299a6505e.jpg",
               cover: "https://image.var-live.tv/var/56d57ce6-74a6-4f1e-b574-b98299a6505e.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=4c03c148f05b6700429bde9e0710f9d85721f8fad8638668108780bd9a13d891",
               matchId: "b9168938-e38e-4c95-84fa-908163a2f35d",
               isPinned: true,
               title: "ملخص مباراة ليفربول ومانشستر سيتي (1-1) | الجولة 28 - الدوري الإنجليزي الممتاز",
               createdAt: "2024-03-24T12:50:45.343273Z"
           ))
}
