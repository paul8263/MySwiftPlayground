//: [Previous](@previous)

import Foundation

class Vector {
    var x: Int = 0
    init() {
        
    }
    init(x: Int) {
        self.x = x
    }
}
func + (left: Vector, right: Vector) -> Vector {
    return Vector(x: left.x + right.x)
}
let vector = Vector(x: 10) + Vector(x: 5)

print(vector.x)
