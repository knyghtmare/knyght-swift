//
//  TestingGroundTwoView.swift
//  TestingGround
//
//  Created by Tahsin Jahin Khalid on 9/2/22.
//

import SwiftUI

struct TestingGroundTwoView: View {
    var body: some View {
        VStack {
            Text("Gryffindor")
                .font(.largeTitle)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title)
    }
}

struct TestingGroundTwoView_Previews: PreviewProvider {
    static var previews: some View {
        TestingGroundTwoView()
    }
}
