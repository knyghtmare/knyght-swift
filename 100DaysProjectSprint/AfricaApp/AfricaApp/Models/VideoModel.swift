//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 1/3/22.
//

import SwiftUI

struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
