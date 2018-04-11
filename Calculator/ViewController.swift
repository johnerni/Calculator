//
//  ViewController.swift
//  Calculator
//
//  Created by John Ernest Ramos on 4/3/18.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewModel: CalculatorViewModel!
    @IBOutlet var numberButtons: [UIButton]!
    @IBOutlet weak var outputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = CalculatorViewModel()
        //test
        for button in numberButtons {
            
            button.addTarget(self, action: #selector(typeNumber(sender:)), for: .touchUpInside)
        }
        outputLabel.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func typeNumber(sender: UIButton) {
       outputLabel.text?.append(String(sender.tag))
    }

    @IBAction func minus(_ sender: UIButton) {
        
        if let number = sender.titleLabel?.text {
            if outputLabel.text?.last == "+" {
                outputLabel.text?.removeLast()
            }
            outputLabel.text?.append(number)
            
        }
    }
    @IBAction func add(_ sender: UIButton) {
        
        if let number = sender.titleLabel?.text {
            if outputLabel.text?.last == "-" {
                outputLabel.text?.removeLast()
            }
            outputLabel.text?.append(number)
            
        }
    }
    @IBAction func onePressed(_ sender: Any) {
        print("1")
    }
    @IBAction func compute(_ sender: UIButton) {
        print("TODO computeasd")
    }
}

