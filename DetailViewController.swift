//
//  DetailViewController.swift
//  ClassRosterB19
//
//  Created by Alex on 7/22/14.
//  Copyright (c) 2014 Alex Rice. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var headshot: UIImageView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    var person : Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text = person.firstName
        lastName.text = person.lastName
        headshot.image = person.pic
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        person.firstName = firstName.text
        person.lastName = lastName.text
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
