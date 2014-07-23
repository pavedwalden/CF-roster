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
        self.tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        initRoster()
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell : PersonCell = tableView.dequeueReusableCellWithIdentifier("personCell") as PersonCell
        
        cell.nameLabel.text = people[indexPath.row].fullName()
        cell.personImageView.image = people[indexPath.row].pic
        
        let myBorderColor = UIColor(red: 24.0/255, green: 68.0/255, blue: 96.0/255, alpha: 1.0)
        cell.personImageView.layer.borderColor = myBorderColor.CGColor
        cell.personImageView.layer.borderWidth = 2.0
        cell.personImageView.layer.cornerRadius = 10.0
        cell.personImageView.layer.masksToBounds = true
        
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
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView?.reloadData()
    }
    
    func initRoster() {
//        people += Person(firstName: "John", lastName: "Clem")
//        people += Person(firstName: "Brad", lastName: "Johnson")
//        people += Person(firstName: "Victor", lastName: "Adu")
//        people += Person(firstName: "Collin", lastName: "Atherton")
//        people += Person(firstName: "Jeff", lastName: "Gayle")
//        people += Person(firstName: "Daniel", lastName: "Hoang")
//        people += Person(firstName: "Leonardo", lastName: "Lee")
//        people += Person(firstName: "Alex", lastName: "Rice")
//        people += Person(firstName: "Kirby", lastName: "Shabaga")
//        people += Person(firstName: "Michael", lastName: "Tirenin")
        people = Person.loadPeopleFromPlist()
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        let selection = self.storyboard.instantiateViewControllerWithIdentifier("selection") as DetailViewController
        selection.person = self.people[indexPath.row]
        
        if self.navigationController {
            self.navigationController.pushViewController(selection, animated: true)
        }
    }
}

