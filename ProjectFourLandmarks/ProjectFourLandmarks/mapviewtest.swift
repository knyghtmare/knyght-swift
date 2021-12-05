//
//  mapviewtest.swift
//  ProjectFourLandmarks
//
//  Created by Tahsin Jahin Khalid on 6/12/21.
//

import SwiftUI
import MapKit

struct mapviewtest: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 23.745, longitude: 90.383),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
            Map(coordinateRegion: $region)
        }
}

struct mapviewtest_Previews: PreviewProvider {
    static var previews: some View {
        mapviewtest()
    }
}
