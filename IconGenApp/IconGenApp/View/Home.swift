//
//  Home.swift
//  IconGenApp
//
//  Created by Tahsin Jahin Khalid on 28/1/22.
//

import SwiftUI

struct Home: View {
    @StateObject var iconModel: IconViewModel = IconViewModel()
    
    // MARK: Enviroment Values for adopting UI for light/dark modes
    @Environment(\.self) var env
    var body: some View {
        VStack {
            Text("Icon Generator App")
            if let image = iconModel.pickedImage {
                
            }
            else {
                // MARK: Add button
                ZStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 22, weight: .bold))
                    }
                }
            }
        }
        .frame(width: 400, height: 400)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
