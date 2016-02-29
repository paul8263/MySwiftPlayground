//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func a() {
//    Exit program
    fatalError("Error message")
}

func b() {
//    Only works for debug mode
//    Will be ignored for release mode
    assertionFailure("Error message")
}

func c() {
//    Can be skipped by -Ounchecked
    preconditionFailure("Error message")
}
