//
//  AuthManager.swift
//  TestApp
//
//  Created by Tahsin Jahin Khalid on 21/12/21.
//

import Foundation
import LocalAuthentication

class AuthManager: ObservableObject {
    private(set) var context = LAContext()
    @Published private(set) var biometricType: LABiometryType = .none
    
    private(set) var canEvaluatePolicy = false
    
    // make a auth check var
    @Published private(set) var isAuthenicated = false
    @Published private(set) var errorDesc: String?
    
    @Published var showAlert = false
    
    init() {
        getBiometricType()
    }
    
    func getBiometricType() {
        context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
        biometricType = context.biometryType
    }
    
    func authenticateWithBiometrics() async {
        context = LAContext()
        
        if canEvaluatePolicy {
            let reason = "Log into your account"
            
            do {
                let success = try await context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason)
                
                if success {
                    DispatchQueue.main.async {
                        self.isAuthenicated = true
                        print("isAuthenticated", self.isAuthenicated)
                    }
                }
            } catch {
                // print the error description
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.errorDesc = error.localizedDescription
                    self.showAlert = true
                    
                    // reset the biometric type
                    self.biometricType = .none
                }
            }
        }
    }
}
