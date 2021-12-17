//
//  Button.swift
//  TestApp
//
//  Created by Tahsin Jahin Khalid on 17/12/21.
//

import SwiftUI

struct Button: View {
    var body: some View {
        VStack {
            Text("Press Me Please")
                .font(.system(size: 34, weight: .semibold, design: .rounded))
                .frame(width: 300, height: 56, alignment: .center)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.76, green: 0.82, blue: 0.93, alpha: 1)), radius: 20, x: 20, y: 20)
            .shadow(color: Color(#colorLiteral(red: 1.00, green: 1.00, blue: 1.00, alpha: 1)), radius: 20, x: -20, y: -20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.86, green: 0.92, blue: 0.98, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

// #colorLiteral(red: 0.76, green: 0.82, blue: 0.93, alpha: 1)

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button()
    }
}
