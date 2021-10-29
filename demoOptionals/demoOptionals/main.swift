//
//  main.swift
//  demoOptionals
//
//  Created by Tahsin Jahin Khalid on 29/10/21.
//

import Foundation

// print("Hello, World!")

let myOptional: String?

// var myOptional = "myName"

myOptional = nil

let text: String = myOptional ?? "Default Value"

/*
if let safeOptional == myOptional {
    print(safeOptional)
} else {
    print("Optional was found to be nil.")
}
*/
print(text)

