//
//  Calculator.swift
//  CalculatorTestRun
//
//  Created by Russell Gordon on 4/27/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import Foundation

class Calculator {
    
    // MARK: Properties
    var providedValue : String = ""
    var computedValue : Double? = nil
    var operation : Operation? = nil
    
    // MARK: Initializer(s)
    
    // MARK: Method(s) a.k.a. Function(s)
    func addToNewValue(digit : String) {
        providedValue = providedValue + digit
    }
    
    /**
     Sets calculator operation to multiplication, and computes a new value, if needed.
     */
    func multiply() {
        
        // Set the operation
        operation = Operation.multiplication
        
        updateState()
    }
    
    
    /* sets the operation to addition and computes new value.
     */
    func add() {
        
        //set the operation
        operation = Operation.addition
        
        updateState()
    }
    
    /* sets the operation to subtraction and computes new value.
     */
    func subtract() {
        
        //set the operation
        operation = Operation.subtraction
        
        updateState()
    }
    
    
    /**
     Sets calculator operation to division, and computes a new value, if needed.
     */
    func divide() {
        
        // Set the operation
        operation = Operation.division
        
        updateState()
    }
    
    /* sets the operation to percentage and computes new value.
     */
    func percentage() {
        
        //set the operation
        operation = Operation.percentage
        
        updateState()
    }
    
    /* sets the operation to plusminus and computes new value.
     */
    func plusMinus() {
        // detect state
        if providedValue == "" && computedValue != nil {
            //storing statement in variable
            computedValue = computedValue! * -1
        } else {
            if var temp = Double(providedValue) {
                //make negaqtive
                temp = temp * -1
                //return temp to provided value
                providedValue = String(format: "%g", temp)
            }
        }
        //set the operation
        
        
    
    }
    
    /**
     Updates calculator state.
     
     This means: what the current computed value is, what the new value provided by the user is, and whether to perform an operation on the computed value and provided value.
     */
    func updateState() {
        
        if computedValue == nil {
            
            // 1. When in this branch, there is no current computed value, just a new provided value.
            
            // Now then, the only thing to do is make the provided value become the computed value.
            makeProvidedValueComputedValue()
            
        } else {
            
            // 1. When in this branch, there is a current computed value.
            
            if providedValue == "" {
                
                // 2. When in this branch, there no provided value yet (an empty string: "")
                //    Only an operation has been logged (multiply, divide, et cetera).
                
                // So, do nothing.
                
            } else {
                
                // 2. When in this branch, a new provided value has been given.
                
                // So, perform the operation!
                equals()
            }
            
        }
        
    }
    
    /**
     Determine a new computed value.
     
     The current operation is performed on the computed value and the provided value.
     */
    func equals() {
        
        // Check operation type
        if operation == Operation.multiplication {
            computedValue = computedValue! * Double(providedValue)!
        } else if operation == Operation.division {
            computedValue = computedValue! / Double(providedValue)!
        } else if operation == Operation.addition {
            computedValue = computedValue! + Double(providedValue)!
        } else if operation == Operation.subtraction {
            computedValue = computedValue! - Double(providedValue)!
        } else if operation == Operation.percentage { if computedValue != nil { computedValue = computedValue! / 100
        } else {
            computedValue = 0
            }
        }
        
        // The operation selected has been performed, so get ready to receive new operation
        // and new value
        operation = nil
        providedValue = ""
        
    }
    
    /**
     Makes the computed value become whatever value the user has typed into the calculator.
     */
    func makeProvidedValueComputedValue() {
        
        computedValue = Double(providedValue)
        providedValue = ""
    }
    
    /**
     Resets the operation, provided value, and computed value.
     */
    func clear() {
        
        // Reset everthing
        operation = nil
        providedValue = ""
        computedValue = nil
    }
    
}
