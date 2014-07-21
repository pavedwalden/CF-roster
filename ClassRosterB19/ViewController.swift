//
//  ViewController.swift
//  ClassRosterB19
//
//  Created by Alex on 7/21/14.
//  Copyright (c) 2014 Alex Rice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initRoster() {
        var placeholder : Person
        var people = Person[]()
        
        people += Person(firstName: "John", lastName: "Clem")
        people += Person(firstName: "Brad", lastName: "Johnson")
        people += Person(firstName: "Victor", lastName: "Adu")
        people += Person(firstName: "Collin", lastName: "Atherton")
        people += Person(firstName: "Jeff", lastName: "Gayle")
        people += Person(firstName: "Daniel", lastName: "Hoang")
        people += Person(firstName: "Leonardo", lastName: "Lee")
        people += Person(firstName: "Alex", lastName: "Rice")
        people += Person(firstName: "Kirby", lastName: "Shabaga")
        people += Person(firstName: "Michael", lastName: "Tirenin")
    }
    
}

