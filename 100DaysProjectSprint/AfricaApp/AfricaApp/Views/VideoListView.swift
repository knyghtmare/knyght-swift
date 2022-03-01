//
//  VideoListView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 28/2/22.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    
    var videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List(videos) { item in
                VideoListItemView(video: item)
            } //: List
        } //: NavView
    }
}

// MARK: - PREVIEW

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
