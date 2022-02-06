//
//  AlertTestView.swift
//  SpeculateFlags
//
//  Created by Tahsin Jahin Khalid on 6/2/22.
//

import SwiftUI

struct AlertTestView: View {
    // variable to check if alert is on/off
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
                showingAlert = true
            }
            .alert("Important message", isPresented: $showingAlert) {
                Button("Delete", role: .destructive) { }
                Button("Cancel", role: .cancel) { }
            }
    }
}

struct AlertTestView_Previews: PreviewProvider {
    static var previews: some View {
        AlertTestView()
    }
}
