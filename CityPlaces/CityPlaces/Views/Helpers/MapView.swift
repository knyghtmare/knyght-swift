//
//  MapView.swift
//  CityPlaces
//
//  Created by Tahsin Jahin Khalid on 14/12/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    /*
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 23.81, longitude: 90.41),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    */
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 23.81, longitude: 90.41))
    }
}
