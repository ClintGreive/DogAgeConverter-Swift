//
//  ViewController.swift
//  Dog Age Converter
//
//  Created by Clint Greive on 27/09/2014.
//  Copyright (c) 2014 Clint Greive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsResultLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var humanYearsEnteredTextField: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButton(sender: UIButton) {
        
        let optionalDoubleFromDogYearsResultLabel = Double((humanYearsEnteredTextField.text as NSString).doubleValue)
        var dogYears:Double
        
        if optionalDoubleFromDogYearsResultLabel > 2 {
            dogYears = (10.5 * 2) + (optionalDoubleFromDogYearsResultLabel - 2) * 4
            commentsLabel.text = ""
        } else {
            dogYears = optionalDoubleFromDogYearsResultLabel * 10.5
            commentsLabel.text = "It's only a puppy! 🐶"
            commentsLabel.textColor = UIColor.yellowColor()
        }
        
        dogYearsResultLabel.text = "\(dogYears)" + " years of age"
        
        humanYearsEnteredTextField.resignFirstResponder()
        dogYearsResultLabel.hidden = false
        humanYearsEnteredTextField.text = ""
        convertButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        convertButton.setTitle("Converted", forState: UIControlState.Normal)
    }
    
}

