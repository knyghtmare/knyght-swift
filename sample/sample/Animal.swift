//
//  Animal.swift
//  sample
//
//  Created by Tahsin Jahin Khalid on 28/10/21.
//

import Foundation

class Animal
{
    var health: Int = 40
    var attack_power: Int = 8
    
    func move()
    {
        print("It starts to move.")
    }
    
    func eat()
    {
        print("It starts to eat.")
    }
    
    func attack()
    {
        print("It hits you for \(attack_power) damage!")
    }
}
