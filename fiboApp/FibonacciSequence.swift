//
//  FibonacciSequence.swift
//  fiboApp
//
//  Created by Dominika on 01.03.2015.
//  Copyright (c) 2015 DominikaBienkowska. All rights reserved.
//

import UIKit



class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt]
    
    init(maxNumber: UInt, includesZero: Bool)
    {
        self.includesZero = includesZero
        if maxNumber == 0 && includesZero == false { values = []
        }
        else if maxNumber == 0
        {
            values = [0]
        }
        else {
            var sequence: [UInt] = [0,1,1]
            var nextNumber: UInt = 2
            while nextNumber <= maxNumber {
                sequence.append(nextNumber)
                let lastNumber = sequence.last!
                let secondToLastNumber = sequence[sequence.count-2]
                nextNumber = lastNumber + secondToLastNumber
            }
            values = sequence
        }
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
    }
    
    init(numberOfItemsInSequence: UInt, includesZero: Bool)
    {
        self.includesZero = includesZero
        if numberOfItemsInSequence == 0 {
            values = []
        }
        else if numberOfItemsInSequence == 1 && includesZero == true {
            
            values = [0]
        }
            
        else if numberOfItemsInSequence == 1 && includesZero != true {
            values = [1]
        }
        else
        {
            var sequence : [UInt]
            if includesZero == true {
                sequence = [0,1]
            }
            else { sequence = [1,1] }
            
            for (var index:UInt = 2; index<numberOfItemsInSequence;index++ )
            {
                var nextNumber = sequence[index-1]+sequence[index-2]
                sequence.append(nextNumber)
            }
            
            values = sequence
        }
        
        
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, and the array should contain this many items: numberOfItemsInSequence. For example, if numberOfItemsInSequence is 10 then the array should contain [0,1,1,2,3,5,8,13,21,34] if inlcudesZero is true, or [1,1,2,3,5,8,13,21,34,55] if includesZero is false.
    }}

let fibonacciSequence = FibonacciSequence(maxNumber:12345, includesZero: true)



let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 13, includesZero: true)

