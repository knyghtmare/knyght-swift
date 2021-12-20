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
    
    func getBiometricType() {
        context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil)
    }
}
