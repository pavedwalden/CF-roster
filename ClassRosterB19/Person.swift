//
//  Person.swift
//  ClassRosterB19
//
//  Created by Alex on 7/21/14.
//  Copyright (c) 2014 Alex Rice. All rights reserved.
//

import Foundation
import UIKit

class Person {
    
    var firstName : String
    var lastName : String
    var pic : UIImage?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.pic = UIImage(named: "person.png")
    }
    
    func fullName() -> String {
        return self.firstName + " " + self.lastName
    }
}