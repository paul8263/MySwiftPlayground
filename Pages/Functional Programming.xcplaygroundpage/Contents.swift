//: [Previous](@previous)

import Foundation

let arr = [1, 2, 3, 4, 5]

let arrMapped = arr.map { (i) -> Int in
    return i * i
}

let arrFiltered = arr.filter { (i) -> Bool in
    return i % 2 == 0
}

let arrReduced = arr.reduce(0) { (x: Int, y: Int) -> Int in
    return x + y
}
