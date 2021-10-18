//
//  AboutMeViewController.swift
//  About Me App
//
//  Created by Александр Женухин on 16.10.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var myPhotoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupImageView()
    }
    
    private func setupLabel() {
        greetingLabel.text = """
        Hey!
        Glad to see you in my application!
        Let me tell you a little about myself?
        """
    }
    
    private func setupImageView() {
        myPhotoImageView.layer.cornerRadius = 20
    }
    
}
