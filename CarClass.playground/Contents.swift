import Cocoa

var str = "Hello, playground"

// inheritance between classes

class Car {
    var topSpeed = 200
    
    func drive() {
        print("Driving at \(topSpeed) km/h")
    }
}

class FutureCar {
    var topSpeed = 250
    
    func drive() {
        print("Driving at \(topSpeed) km/h")
    }
    
    func fly() {
        print("Flying")
    }
}

let myCar = Car()
myCar.drive()


