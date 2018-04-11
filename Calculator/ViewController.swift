//
//  ViewController.swift
//  Calculator
//
//  Created by John Ernest Ramos on 4/3/18.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet var buttonNumbers: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add target for each button numbers
        for button in buttonNumbers {
            button.addTarget(self, action: #selector(numberTouched(button:)), for: .touchUpInside)
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        labelResult.text = "0"
    }
    
    
    /// Method called when a number button is pressed
    /// Appends the number to the label if the text is not '0'
    /// - Parameter button: button that received a touchUpInside event
    @objc func numberTouched(button: UIButton) {
        guard let resultText = labelResult.text else {
            return
        }
        
        guard let number = button.titleLabel?.text else {
            labelResult.text = "Error"
            return
        }
        
        guard resultText.count < 12 else {
            return
        }
        
        if labelResult.text == "0" {
            labelResult.text = number
        } else {
            labelResult.text?.append(number)
        }
    }
    
}

