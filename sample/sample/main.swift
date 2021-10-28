//
//  main.swift
//  sample
//
//  Created by Tahsin Jahin Khalid on 28/10/21.
//

import Foundation

// print("Hello, World!")

let dog = Animal(health: 20, attack_power: 8)

dog.move()

var wolf = Wolf(health: 40, attack_power: 25)

wolf.attack()

wolf.fire_breath(damage: 70)
