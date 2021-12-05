//
//  CircleImage.swift
//  ProjectFourLandmarks
//
//  Created by Tahsin Jahin Khalid on 6/12/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        // name of image file in string format
        Image("Arrow").clipShape(Circle())
            .overlay {
            Circle().stroke(.white, lineWidth: 4.0)
                    .shadow(color: .black, radius: 7.0, x: 0, y: 4)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
