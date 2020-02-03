import Cocoa

var str = "Hello, playground"

// inheritance between classes

// parent class
class Car {
    var topSpeed = 200
    
    func drive() {
        print("Driving at \(topSpeed) km/h")
    }
}

// inheritance
// child class
class FutureCar : Car {
    
    override func drive() {
        print("Driving at \(topSpeed + 50) km/h")
    }
    
    func fly() {
        print("Flying")
    }
}

let myCar = Car()
myCar.drive()

let myNewCar = FutureCar()
myNewCar.fly()
myNewCar.drive()


