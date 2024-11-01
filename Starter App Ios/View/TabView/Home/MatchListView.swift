//
//  MatchListView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI
 

struct MatchListView: View {
    var matchStory: MatchStory

    var body: some View {
        VStack {
            Text(matchStory.homeTeam.name)
                .font(.largeTitle)
            Text("vs")
            Text(matchStory.awayTeam.name)
                .font(.largeTitle)
            Image(systemName: "photo") // Placeholder for team logos
            ForEach(matchStory.stories, id: \.id) { story in
                Text(story.title)
                    .font(.headline)
                Text("Duration: \(story.duration)")
            }
        }
        .padding()
        .navigationTitle("Match Details")
    }
}

 

#Preview {
    MatchListView(matchStory: MatchStory(
        matchId: "test",
                                         homeTeam: Team(id: "1", name: "Team A", logoId: "", logo: "", code: nil, country: nil, playerImageId: nil, playerImage: nil),
                                         awayTeam: Team(id: "2", name: "Team B", logoId: "", logo: "", code: nil, country: nil, playerImageId: nil, playerImage: nil),
                                         cover: "", stories: []))
}

 

