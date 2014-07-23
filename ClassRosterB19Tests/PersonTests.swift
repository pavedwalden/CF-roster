//
//  PersonTests.swift
//  ClassRosterB19
//
//  Created by Alex on 7/21/14.
//  Copyright (c) 2014 Alex Rice. All rights reserved.
//

import XCTest

class PersonTests: XCTestCase {
    
    var person = Person(firstName: "Bob", lastName: "Dole")

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPersonCreation() {
        var person = Person(firstName: "Bob", lastName: "Dole")
        XCTAssertNotNil(person, "Person cannnot be created")
    }

    func testFirstName() {
        XCTAssertNotNil(person.firstName, "person's first name property was not created")
    }
    
    func testPersonInit(){
        XCTAssertNotNil(person, "person can not be created")
    }
    
    func testFullName() {
        var first = "Bob"
        var last = "Dole"
        
        XCTAssertEqual(person.fullName(), first + " " + last, "full name is matching")
    }
    
    func testPersonPic() {
        XCTAssertNotNil(person.pic, "person has no pic value")
    }
    
    func testRosterLength() {
        let people = Person.loadPeopleFromPlist()
        println(people[0].firstName)
        println(people[0].lastName)
    }
}
