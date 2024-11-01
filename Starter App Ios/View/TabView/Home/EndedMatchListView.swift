//
//  EndedMatchListView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI


struct EndedMatchListView: View {
    var endedMatch: EndedMatch

    var body: some View {
        VStack {
            Text(endedMatch.homeTeamName)
                .font(.largeTitle)
            Text("vs")
            Text(endedMatch.awayTeamName)
                .font(.largeTitle)
            Image(systemName: "photo") // Placeholder for team logos
            Text("League: \(endedMatch.league.name)")
            Text("Start Time: \(endedMatch.startTime)")
            Text("Result: \(endedMatch.matchResult.home) - \(endedMatch.matchResult.away)")
        }
        .padding()
        .navigationTitle("Ended Match Details")
    }
}

#Preview {
        EndedMatchListView(endedMatch: EndedMatch(
            venueName: nil,
            homeTeamId: "1",
            homeTeamName: "Team A",
            homeTeamLogoId: "1",
            homeTeamLogo: "",
            homeTeamPlayerImageId: nil,
            homeTeamPlayerImage: nil,
            awayTeamId: "2",
            awayTeamName: "Team B",
            awayTeamLogoId: "2",
            awayTeamLogo: "",
            awayTeamPlayerImageId: nil,
            awayTeamPlayerImage: nil,
            league: League(id: "1", name: "League A", cover: "", coverId: "", logo: "", logoId: ""),
            startTime: "2024-04-27T19:00:00Z",
            state: 10,
            matchResult: MatchResult(home: 2, away: 2),
            isPinned: false,
            priority: 2,
            id: "1",
            createdAt: "2024-04-20T16:38:16.059264Z"
        ))
     
}
