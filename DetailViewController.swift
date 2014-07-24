//
//  DetailViewController.swift
//  ClassRosterB19
//
//  Created by Alex on 7/22/14.
//  Copyright (c) 2014 Alex Rice. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var headshot: UIImageView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var twitterHandle: UITextField!
    @IBOutlet weak var githubHandle: UITextField!
    
    var person : Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.text = person.firstName
        lastName.text = person.lastName
        if let twitter = person.twitterHandle {
            twitterHandle.text = twitter
        }
        if let github = person.githubHandle {
            githubHandle.text = github
        }
        
        self.firstName.delegate = self
        self.lastName.delegate = self
        self.twitterHandle.delegate = self
        self.githubHandle.delegate = self
        
        headshot.image = person.pic
        
        let myBorderColor = UIColor(red: 24.0/255, green: 68.0/255, blue: 96.0/255, alpha: 1.0)
        headshot.layer.borderColor = myBorderColor.CGColor
        headshot.layer.borderWidth = 3.0
        headshot.layer.cornerRadius = 30.0
        headshot.layer.masksToBounds = true
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        person.firstName = firstName.text
        person.lastName = lastName.text
        person.githubHandle = githubHandle.text
        person.twitterHandle = twitterHandle.text
    }

    func textFieldDidBeginEditing(textField: UITextField!) {
        let initialWidth = self.view.bounds.width
        let initialHeight = self.view.bounds.height
        let newY = textField.frame.origin.y - 200

        UIView.animateWithDuration(0.3, animations:{ () -> Void
            in
            self.view.bounds = CGRect(x: self.view.bounds.origin.x, y: newY, width: initialWidth, height: initialHeight)
            })
        
        
    }
    
    func textFieldDidEndEditing(textField: UITextField!) {
        UIView.animateWithDuration(0.3) {
            self.view.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width, height:self.view.bounds.height)
        }
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }

}
