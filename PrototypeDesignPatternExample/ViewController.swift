//
//  ViewController.swift
//  PrototypeDesignPatternExample
//
//  Created by hoseinAlimoradi on 7/18/23.
//

import UIKit

class ViewController: UIViewController {

    fileprivate func testNameClass() {
        var steve = NameClass(firstName: "Steve", lastName: "Johnson")
        var john = steve.clone()
        
        print("\(steve), \(john)")
        
        john.firstName = "John"
        john.lastName = "Wallace"
        
        print("\(steve), \(john)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testNameClass()
    }


}

