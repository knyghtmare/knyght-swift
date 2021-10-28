//
//  Animal.swift
//  sample
//
//  Created by Tahsin Jahin Khalid on 28/10/21.
//

import Foundation

class Animal
{
    var health: Int
    var attack_power: Int
    
    init(health: Int, attack_power: Int) {
        self.health = health
        self.attack_power = attack_power
    }
    
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
