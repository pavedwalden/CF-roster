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
    var twitterHandle : String?
    var githubHandle : String?
    var pic : UIImage?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.pic = UIImage(named: "person-icon.png")
    }
    
    func fullName() -> String {
        return self.firstName + " " + self.lastName
    }
    
    class func loadPeopleFromPlist() -> Array<Person> {
        var people = [Person]()
        let path = NSBundle.mainBundle().pathForResource("people", ofType: "plist")
        let peopleArray = NSArray(contentsOfFile: path)
        
        for person in peopleArray {
            if let thePerson = person as? Dictionary<String, String> {
                let firstName = thePerson["firstName"]
                let lastName = thePerson["lastName"]
                let newPerson = Person(firstName: firstName!, lastName: lastName!)
                if let picName = thePerson["pic"]{
                    newPerson.pic = UIImage(named: picName)
                }
                if let twitter = thePerson["twitter"] {
                    newPerson.twitterHandle = twitter
                }
                if let github = thePerson["github"] {
                    newPerson.githubHandle = github
                }
                
                people += newPerson
            }
        }
        return people
    }
}