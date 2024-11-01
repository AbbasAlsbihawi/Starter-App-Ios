//
//  MatchesStoryListView.swift
//  Starter App Ios
//
//  Created by Abbas on 28/06/2024.
//

import SwiftUI

struct MatchesStoryListView: View {
    
    @State private var opacityEffect: Bool = false
    @State private var clipEdges: Bool = false
    var matchesStories: [MatchStory]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 8) {
                
                ForEach(matchesStories) { featuredMatch in
                    VStack(alignment: .leading ,  spacing: 55,   content: {
                        if let url = URL(string: featuredMatch.cover) {
                            AsyncImage(url: url) { image in
                                     image
                                        .resizable()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .overlay(){
                                            VStack(){
                                                
                                                Text(featuredMatch.homeTeam.name)
                                                    .foregroundStyle(.red)
                                                
                                                if let url = URL(string: featuredMatch.homeTeam.logo) {
                                                    AsyncImage(url: url) { image in
                                                             image
                                                                .resizable()
                                                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                                                .frame(width: 50, height: 50)
                                                           
                                                            
                                                    }
                                                placeholder: {
                                                    AnimatedBorderCardViewHorizontal()
                                                    }
                                                }
                                                if let url = URL(string: featuredMatch.awayTeam.logo) {
                                                    AsyncImage(url: url) { image in
                                                             image
                                                                .resizable()
                                                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                                                .frame(width: 50, height: 50)
                                                           
                                                            
                                                    }
                                                placeholder: {
                                                    AnimatedBorderCardViewHorizontal()
                                                    }
                                                }
                                            }
                                            }
                                            
 
                                
                                    
                            }
                        placeholder: {
                            AnimatedBorderCardViewHorizontal()
                                .containerRelativeFrame(.horizontal)
                            }
                        }
                        
                        
 
                    })
//                    .padding(16)
                    .clipShape(.rect(cornerRadius: 10))
                    .frame(width: 100, height: 250)
                    }
                .padding(4)
                .clipShape(.rect(cornerRadius: 10))
                
                
                    
            }
            .scrollTargetLayout()
            .overlay(alignment: .bottom) {
                PagingIndicators(
                    activeTint: appTint,
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
    MatchesStoryListView(
    matchesStories:  [
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        ),
        MatchStory(
            matchId:"52d9dafb-22b6-46e4-9969-ca91f32d6fbb",
            homeTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
            awayTeam: Team(
                 id : "9668c826-3a0e-41a8-98f0-ef0140c8ecc7",
                 name: "Aston Villa",
                 logoId : "b9047470-7702-40ee-a874-2dbb2baac313.png",
                 logo : "https://image.var-live.tv/var/b9047470-7702-40ee-a874-2dbb2baac313.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=fd1bd7beef913eed3647cd24d5f4d9398cfc7dfee57188912743cc3d206a3036",
                code : "",
                 country : " ",
                 playerImageId : "",
                 playerImage : ""
            ),
             
                       cover : "https://image.var-live.tv/var/9bcea9ef-959c-428a-888a-932cf67aef3b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=b304fa01bcf370eef58dffe48bdf39869d456989438e07ead65741aa57e5ac2f",
            stories: [
                Story(
                         id : "5cc509aa-dccd-408e-bfdd-75a0058705f9",
                         title: "Jarell Quansah (1 - 3)",
                         content: "https://image.var-live.tv/var/fe2acb95-74cc-4116-95aa-0b18df448d94.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=lGD8aesdF2suzs4llwc1%2F20240628%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240628T112305Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=92779e2fb26e276ede219361418601f0207caa781f613e61ee3646072a6c5844",
                         duration: 7530,
                        contentId: "fe2acb95-74cc-4116-95aa-0b18df448d94.mp4"
                     
                )
            ]
        )
    ]
    )
}
