//
//  LocationModel.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 2/3/22.
//

import SwiftUI
import MapKit

struct ParkLocationModel: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let varLat: Double
    let varLong: Double
    
    // Computed Property
    
    var parkLocation: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: varLat, longitude: varLong)
    }
}
