//
//  ContentView.swift
//  TestApp
//
//  Created by Tahsin Jahin Khalid on 17/12/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authManager: AuthManager
    
    var body: some View {
        // Text("Hello, world!")
        //    .padding()
        VStack {
            LoginView().environmentObject(authManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .alert(isPresented: $authManager.showAlert, content: {
            Alert(title: Text("Error"), message: Text(authManager.errorDesc ?? "Error trying to login with credentials. Please Try Again"), dismissButton: .default(Text("Okay")))
        })
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AuthManager())
    }
}
