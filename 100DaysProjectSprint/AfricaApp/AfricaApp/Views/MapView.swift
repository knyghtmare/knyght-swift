//
//  MapView.swift
//  AfricaApp
//
//  Created by Tahsin Jahin Khalid on 28/2/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let mapAppLocations: [ParkLocationModel] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        // 1. Basic Map
        Map(coordinateRegion: $region)
        
        // 2. Advanced Map
        
    }
}

// MARK: - PREVIEW

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
