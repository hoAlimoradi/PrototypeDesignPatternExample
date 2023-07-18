//
//  NameClass.swift
//  PrototypeDesignPatternExample
//
//  Created by hoseinAlimoradi on 7/18/23.
//
import Foundation

class NameClass: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return NameClass(firstName: self.firstName, lastName: self.lastName)
    }
    
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func clone() -> NameClass {
        return self.copy() as! NameClass
    }
}

extension NameClass: CustomStringConvertible {
    public var description: String {
        return "NameClass(firstName: \"\(firstName)\", lastName: \"\(lastName)\")"
    }
}


