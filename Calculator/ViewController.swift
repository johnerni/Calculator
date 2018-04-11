//
//  ViewController.swift
//  Calculator
//
//  Created by John Ernest Ramos on 4/3/18.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewModel: Arithmetic!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = Arithmetic()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

