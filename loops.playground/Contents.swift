import Cocoa

var str = "Hello, playground"

// loops

// for loops
for counter in 1...4 {
    print(counter)
}

var sum = 0

for index in 1...5 {
    sum += index
}
print(sum)

// while loops

var i = 0
while(i < 5) {
    print("hello")
    i += 1
}

// repeat-while loop
repeat{
    print("bye")
    i -= 1
}while(i > 0)
