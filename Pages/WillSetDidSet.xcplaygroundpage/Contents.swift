//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class A {
    var x: Int? {
        willSet (newValue) {
            print("WillSet \(newValue)")
        }
        didSet {
            print("didSet \(self.x)")
        }
    }
}

let a = A()
a.x = 10
a.x = nil
