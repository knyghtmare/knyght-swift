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
        // Map(coordinateRegion: $region)
        
        // 2. Advanced Map
        Map(coordinateRegion: $region, annotationItems: mapAppLocations, annotationContent: {
            item in
            // A. PIN: OLD STYLE (always static)
            // MapPin(coordinate: item.parkLocation, tint: .accentColor)
            
            // B. MARKER: NEW STYLE (always static)
            // MapMarker(coordinate: item.parkLocation, tint: .accentColor)
            
            // C. Custom Basic Annotation
            /*
            MapAnnotation(coordinate: item.parkLocation) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
             */
            // D. CUSTOM ADVANCED ANNOTATION
            // it could be interactive
            MapAnnotation(coordinate: item.parkLocation) {
                MapAnnotationView(location: item)
            }
        }) //: MAP
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    } //: HSTACK
                    Divider()
                    HStack {
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    } //: HSTACK
                } //: VSTACK
            } //: HSTACK
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.60)
            )
            .padding()
            , alignment: .top
        )
    }
}

// MARK: - PREVIEW

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
