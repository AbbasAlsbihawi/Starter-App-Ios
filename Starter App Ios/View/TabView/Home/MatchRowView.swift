//
//  MatchRowView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI






struct MatchRowView: View {
    var match: FeaturedMatch

    var body: some View {
        HStack {
            if let url = URL(string: match.cover) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                }
            }

            VStack(alignment: .leading) {
                Text(match.league.name)
                    .font(.headline)
                Text("Match Result: \(match.matchResult.home) - \(match.matchResult.away)")
                Text("Start Time: \(match.startTime)")
            }
        }
        .padding()
    }
}

 

#Preview {
    MatchRowView(match:   FeaturedMatch(
                        id: "6e694bcc-2038-4de6-927c-571dce631e7b",
                        coverId: "782081f7-02f1-494a-9405-5842ae21cae8.png",
                        cover: "https://image.var-live.tv/var/782081f7-02f1-494a-9405-5842ae21cae8.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=54c5e92ebcfc2ba9e64b7978dd1ea632b07c287a9f55fb995c8e8b048607f919",
                        channels: [
                            Channel(nameAr: nil, nameEn: nil, logoId: nil, logo: nil, id: "45ecdde7-179a-4ba9-a91e-76f07ec66873", createdAt: "2024-04-17T06:47:56.206912Z")
                        ],
                        league: League(
                            id: "751eee31-27eb-45e9-b255-e9d213dae796",
                            name: "دوري أبطال أوروبا",
                            cover: "https://image.var-live.tv/var/74c1a5a8-d846-49a8-9e04-a33b0900afd8.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=6bc72786d685b8e6de7160300a5cae701f203ba61d9a9dbe70d9db46efc6d825",
                            coverId: "74c1a5a8-d846-49a8-9e04-a33b0900afd8.png",
                            logo: "https://image.var-live.tv/var/dd236d5d-d509-4d28-bada-84b413f679ed.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd0c32f7657a0966ddf703712451ba88027e1379451b887b68defc666b5b47cc",
                            logoId: "dd236d5d-d509-4d28-bada-84b413f679ed.png"
                        ),
                        startTime: "2024-04-17T19:00:00Z",
                        state: 12,
                        matchResult: MatchResult(home: 1, away: 1),
                        createdAt: "2024-04-15T14:59:26.518006Z"
                    )
    )
}
