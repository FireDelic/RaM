//
//  EpisodeView.swift
//  RaM
//
//  Created by Fahir Delic on 17.03.23.
//

import SwiftUI

struct EpisodeView: View {
    
@ObservedObject var episodeViewModel: EpisodeViewModel
    
    var body: some View {
        List(episodeViewModel.episodes) { episode in
            HStack(alignment: .center){
                Text(String(episode.id ?? 1))
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                VStack(alignment: .leading){
                    Text(episode.episode ?? "S01E01")
                        .font(.footnote)
                    Text(episode.name ?? "Pilot")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .shadow(color: .green, radius: 1)
                }
            }.navigationTitle("Episodes")
                .onAppear {
                    episodeViewModel
                        .fetchEpisodes(completion: {
                            episodes in
                            episodeViewModel.episodes = episodes
                        })
                }
                .navigationTitle("Episodes")
        }
    }
}
