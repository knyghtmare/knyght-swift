//
//  Wolf.swift
//  sample
//
//  Created by Tahsin Jahin Khalid on 28/10/21.
//

import Foundation

class Wolf: Animal {
    
    //super.health
    //var health: Int = 60
    
    //super.attack_power
    //var attack_power: Int = 25
    
    var armour: Int = 50
    
    func fire_breath(damage: Int) {
        print("You are incinerated for \(damage) physical damage.")
    }
}
