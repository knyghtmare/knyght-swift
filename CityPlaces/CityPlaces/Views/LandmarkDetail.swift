//
//  LandmarkDetail.swift
//  CityPlaces
//
//  Created by Tahsin Jahin Khalid on 14/12/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300).ignoresSafeArea(edges: .top)
            // trying to fit the imageview along the boundary
            // of mapview and the text
            ImageView(image: landmark.image)
                .offset(y: -130).padding(.bottom, -130)
            // info text
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                                    .font(.title2)
                Text(landmark.description)
            }
            .padding(.all)
            // push to the top of screen
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
