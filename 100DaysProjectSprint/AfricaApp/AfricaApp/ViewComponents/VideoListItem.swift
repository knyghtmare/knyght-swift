//
//  VideoListItem.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 1/3/22.
//

import SwiftUI

struct VideoListItem: View {
    // MARK: - PROPERTIES
    
    let video: VideoModel
    
    // MARK: - BODY
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Image("video-\(video.id)")
            .resizable()
            .scaledToFit()
            .frame(height: 80)
            .cornerRadius(9)
        
    }
}

// MARK: - PREVIEW

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItem(video: videos[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
