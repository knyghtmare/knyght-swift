//
//  ImageView.swift
//  CityPlaces
//
//  Created by Tahsin Jahin Khalid on 14/12/21.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("turtlerock"))
    }
}
