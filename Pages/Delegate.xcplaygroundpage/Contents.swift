//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

protocol MockUITableViewControllerDelegate: class {
    func numberOfRowsInSection() -> Int
    func cellForRowAtIndexPath()
}

class MockUITableViewController {
    weak var delegate: MockUITableViewControllerDelegate?
    init() {
        
        self.viewDidLoad()
        
        let numberOfrow = self.delegate?.numberOfRowsInSection()
        
        self.delegate?.cellForRowAtIndexPath()
        
        if let numberOfrow = numberOfrow {
            print(numberOfrow)
        }
    }
    func viewDidLoad() {
        print("View did load")
    }
}

class MyTableViewController: MockUITableViewController, MockUITableViewControllerDelegate {
    
    override func viewDidLoad() {
        self.delegate = self
        print("myTableViewController loaded")
    }
    
    func numberOfRowsInSection() -> Int {
        return 1
    }
    
    func cellForRowAtIndexPath() {
        print("Cell for Row")
    }
    
}

let myTableViewController = MyTableViewController()