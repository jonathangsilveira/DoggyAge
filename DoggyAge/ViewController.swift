//
//  ViewController.swift
//  DoggyAge
//
//  Created by Mout's on 3/22/20.
//  Copyright © 2020 Udemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    @IBAction func onDiscoverAgePressed(_ sender: UIButton) {
        let text = ageField.text
        if text?.isEmpty == true {
            resultLabel.isHidden = true
            return
        }
        resultLabel.isHidden = false
        let dogAge = Int(text!)!
        let humanAge = dogAge * 7
        resultLabel.text = "Your doggy's human age is \(humanAge)"
    }
    
    
}

