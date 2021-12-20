//
//  LoginView.swift
//  TestApp
//
//  Created by Tahsin Jahin Khalid on 21/12/21.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authManager: AuthManager
    
    var body: some View {
        VStack(spacing: 40) {
            Title()
            
            // PrimaryButton(image: "faceid", text: "Login with FaceID")
            switch authManager.biometricType {
            case .faceID:
                PrimaryButton(image: "faceid", text: "Login with FaceID")
                    .onTapGesture {
                        Task.init {
                            await authManager.authenticateWithBiometrics()
                        }
                }
            case .touchID:
                PrimaryButton(image: "touchid", text: "Login with TouchID")
                    .onTapGesture {
                        Task.init {
                            await authManager.authenticateWithBiometrics()
                        }
                }
            default:
                PrimaryButton(image: "person.fill", text: "Login with credentials")
                 
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.black, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView().environmentObject(AuthManager())
            LoginView().environmentObject(AuthManager()).previewDevice("iPhone 8")
            LoginView().environmentObject(AuthManager()).previewDevice("iPod touch (7th generation)")
        }
    }
}
