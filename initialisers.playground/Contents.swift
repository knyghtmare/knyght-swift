import Cocoa

var str = "Hello, playground"

// initialisers
// (constructor functions)

class Person {
    var name = ""
    var age = 0
    
    init(_ n:String, _ a:Int) {
        // set up your object
        name = n
        age = a
    }
}

var jahin = Person("Jahin", 24)
jahin.name
jahin.age
