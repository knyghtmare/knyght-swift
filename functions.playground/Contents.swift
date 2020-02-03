import Cocoa

var str = "Hello, playground"

// functions

func sayHi(){
    print("Hi!")
}

sayHi()

// functions with inputs

func addNumbers(arg1 num1:Int, arg2 num2:Int) -> Int {
    return num1 + num2
}

print( addNumbers(arg1: 3, arg2: 4) )
