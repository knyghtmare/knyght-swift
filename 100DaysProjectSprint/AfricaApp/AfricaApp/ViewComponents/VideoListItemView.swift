//
//  VideoListItem.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 1/3/22.
//

import SwiftUI

struct VideoListItemView: View {
    // MARK: - PROPERTIES
    
    let video: VideoModel
    
    // MARK: - BODY
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } //: ZSTACK
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } //: VSTACK
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(video: videos[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
