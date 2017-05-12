//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //This is a connection to the label in the view
    @IBOutlet weak var labelDisplay: UILabel!
    
   //Create an instance (object) of the calculator class
    var model = Calculator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //clear the view
        labelDisplay.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        labelDisplay.text = model.providedValue
    }

    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func zeroPressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        labelDisplay.text = model.providedValue
    }
    
    @IBAction func Multiply(_ sender: Any) {
        model.multiply()
    }
    
    @IBAction func Divide(_ sender: Any) {
        model.divide()
    }
    
    @IBAction func Add(_ sender: Any) {
        model.add()
    }
    
    @IBAction func Subtract(_ sender: Any) {
        model.subtract()
    }
    
    @IBAction func Decimal(_ sender: Any) {
        model.addToNewValue(digit: ".")
    
    }
    
    @IBAction func Percentage(_ sender: Any) {
        model.percentage()
        model.equals()
        if model.computedValue != nil {
            labelDisplay.text = String(format: "%g", model.computedValue!)
        }

    }
    
    
    @IBAction func Clear(_ sender: Any) {
        model.clear()
        labelDisplay.text = ""
    }
    
    @IBAction func Equals(_ sender: Any) {
        model.equals()
        if model.computedValue != nil {
            labelDisplay.text = String(format: "%g", model.computedValue!)
        }
        
    }

    @IBAction func plusMinus(_ sender: Any) {
        model.plusMinus()
        labelDisplay.text = model.providedValue
        }

}




