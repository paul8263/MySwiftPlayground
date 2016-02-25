//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class A {
    var b: B?
    init() {
        print("A init")
    }
    deinit {
        print("A deinit")
    }
}

class B {
    weak var a: A?
    init() {
        print("B init")
    }
    deinit {
        print("B deinit")
    }
}

class C {
    var a: A?
    init() {
        print("C init")
    }
    deinit {
        print("C deinit")
    }
}
    
var a: A?
var b: B?
var c: C?
    
a = A()
b = B()
c = C()
    
a?.b = b
b?.a = a
c?.a = a
    
a = nil
b = nil
c = nil

