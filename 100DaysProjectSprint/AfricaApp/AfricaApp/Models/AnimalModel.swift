//
//  AnimalModel.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 1/3/22.
//

import SwiftUI

struct AnimalModel: Codable, Identifiable {
    // code here
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
