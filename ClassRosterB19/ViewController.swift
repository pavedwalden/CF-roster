//
//  ViewController.swift
//  ClassRosterB19
//
//  Created by Alex on 7/21/14.
//  Copyright (c) 2014 Alex Rice. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var people = [Person]()
                            
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        initRoster()
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell : PersonCell = tableView.dequeueReusableCellWithIdentifier("personCell") as PersonCell
        
        cell.nameLabel.text = people[indexPath.row].fullName()
        cell.personImageView.image = people[indexPath.row].pic
        
        return cell
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if segue.identifier == "personDetail" {
            let destination = segue.destinationViewController as DetailViewController
            destination.person = people[tableView.indexPathForSelectedRow().row]
            println("personDetail")
        }else if segue.identifier == "personAdd" {
            let destination = segue.destinationViewController as DetailViewController
            let newPerson = Person(firstName: "", lastName: "")
            people.append(newPerson)
            destination.person = newPerson
        }
    }
    
//    func loadpeoplefromplist() -> Array<Person> {
//        let path = NSBundle.mainBundle().pathForResource("people", ofType: "plist")
//        let peopleArray = NSArray(contentsOfFile: path)
//        
//        for person in peopleArray {
//            if let thePerson = person as? Dictionary<String, String> {
//                let firstName =
//                let lastName =
//                let newPerson = Person(fristname...)
//            }
//        }
//    }
    
    func initRoster() {
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

