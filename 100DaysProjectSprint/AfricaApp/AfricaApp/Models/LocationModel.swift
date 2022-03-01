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
    let latitude: Double
    let longitude: Double
    
    // Computed Property
    
    var parkLocation: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
