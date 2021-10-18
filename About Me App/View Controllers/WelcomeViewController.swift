//
//  WelcomeViewController.swift
//  About Me App
//
//  Created by Александр Женухин on 14.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    @IBAction func logoutButtonPressed() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.login)"
    }
}
