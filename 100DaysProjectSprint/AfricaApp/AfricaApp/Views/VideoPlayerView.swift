//
//  VideoPlayerView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 2/3/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - BODY
    var body: some View {
        // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
    }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
    }
}
