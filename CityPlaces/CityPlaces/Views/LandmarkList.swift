//
//  LandmarkList.swift
//  CityPlaces
//
//  Created by Tahsin Jahin Khalid on 14/12/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("City Places")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
