//: Playground - noun: a place where people can play

import UIKit

protocol Foo {
    
}
// Function present only can be called when the class which extends this protocol also extends UIViewController
extension Foo where Self: UIViewController {
    func present(controller: UIViewController) {
        self.presentViewController(controller, animated: true, completion: nil)
    }
}

class A: UIViewController, Foo {
    var controller = UIViewController()
    func bar() {
//        OK here
        self.present(controller)
    }
}
class B: Foo {
    var controller = UIViewController()
    func bar() {
//        Cannot be called
//        self.present(controller)
    }
}
