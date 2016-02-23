//: [Previous](@previous)

import Foundation

class Sub {
    subscript(x: Int) -> Int {
        return x * 10
    }
}
let sub = Sub()
print(sub[2])
