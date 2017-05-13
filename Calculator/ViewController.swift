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
    
    //detects and displays a digit 1 press
    @IBAction func onePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
        labelDisplay.text = model.providedValue
    }
    
    //detects and displays a digit 2 press
    @IBAction func twoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        labelDisplay.text = model.providedValue
    }
    
    //detects and displays a digit 3 press
    @IBAction func threePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        labelDisplay.text = model.providedValue
    }
    
    //detects and displays a digit 4 press
    @IBAction func fourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        labelDisplay.text = model.providedValue
    }
    
    //detects and displays a digit 5 press
    @IBAction func fivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        labelDisplay.text = model.providedValue
    }
    
    //detects and displays a digit 6 press
    @IBAction func sixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        labelDisplay.text = model.providedValue
    }
    
    //detects and displays a digit 7 press
    @IBAction func sevenPressed(_ sender: Any) {
        model.addToNewValue(digit: "7")
        labelDisplay.text = model.providedValue
    }
    
    //detects and displays a digit 8 press
    @IBAction func eightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        labelDisplay.text = model.providedValue
    }
    
    //detects and displays a digit 9 press
    @IBAction func ninePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        labelDisplay.text = model.providedValue
    }
    
    //detects and displays a digit 0 press
    @IBAction func zeroPressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        labelDisplay.text = model.providedValue
    }
    
    //detects and performs multiply operation
    @IBAction func Multiply(_ sender: Any) {
        model.multiply()
    }
    
    //detects and performs divide operation
    @IBAction func Divide(_ sender: Any) {
        model.divide()
    }
    
    //detects and performs add section
    @IBAction func Add(_ sender: Any) {
        model.add()
    }
    
    //detects and performs subtract section
    @IBAction func Subtract(_ sender: Any) {
        model.subtract()
    }
    
    //detects, displays, and performs decimal operation
    @IBAction func Decimal(_ sender: Any) {
        model.addToNewValue(digit: ".")
        labelDisplay.text = model.providedValue
    }
    
    //detects and performs percentage operation
    @IBAction func Percentage(_ sender: Any) {
        model.percentage()
        model.equals()
        if model.computedValue != nil {
            labelDisplay.text = String(format: "%g", model.computedValue!)
        }
        
    }
    
    //detects and performs clear operation which wipes all varibles
    @IBAction func Clear(_ sender: Any) {
        model.clear()
        labelDisplay.text = ""
    }
    
    //detects and performs equals function, which runs the selected operation.
    @IBAction func Equals(_ sender: Any) {
        model.equals()
        if model.computedValue != nil {
            labelDisplay.text = String(format: "%g", model.computedValue!)
        }
        
    }
    
    //detects and performs the plusMinus function, which switches the sign of either the provided or computed value, depending on the state of the model.
    @IBAction func plusMinus(_ sender: Any) {
        model.plusMinus()
        if model.computedValue != nil {
            labelDisplay.text = String(format: "%g", model.computedValue!)
        }else {labelDisplay.text = model.providedValue
            
        }
    }
}



