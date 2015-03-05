//
//  ViewController.swift
//  fiboApp
//
//  Created by Dominika on 01.03.2015.
//  Copyright (c) 2015 DominikaBienkowska. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    @IBOutlet weak var includesZeroLabel: UILabel!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
           self.updateFibonacciSequence()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func updateFibonacciSequence() {
        
        numberOfItemsLabel.text = String(Int(numberOfItemsSlider.value))
        
        if includesZeroSwitch.on {
            numberOfItemsSlider.maximumValue = 94
        } else {
            numberOfItemsSlider.maximumValue = 93
        }
        
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
        textView.text = fibonacciSequence.values.description

    }
    
}

