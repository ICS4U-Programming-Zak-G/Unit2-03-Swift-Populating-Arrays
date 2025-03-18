//
//  PopulatingArrays.swift
//
//  Created by Zak Goneau
//  Created on 2025-03-18
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  Generates 10 random integers for 5 lines, then the average of each is found using arrays.

// Import library
import Foundation

// Define main function
func main() {

    // Define constants
    let MAX_LINES = 5
    let MAX_SIZE = 10
    let MAX = 99
    let MIN = 1

    // Initialize variables
    var arrayNum : [Float] = []
    var lineCounter = 0
    var average:Float = 0
    var sum:Float = 0
    var randNum = 0

    // Introduce program to user
    print("This program generates 5 lines each with 10 random integers between 0-100.\n"
        + "It then calculates the average of each line.\n")

    // Loop to get 5 lines of 10 random numbers
    repeat {
        // Populate array with 10 random numbers between 0-100
        for _ in 0..<MAX_SIZE {
            randNum = Int.random(in: MIN...MAX)
            arrayNum.append(Float(randNum))
        }

        // Sort array
        arrayNum.sort()

        // Calculate sum of array
        for indexCounter in 0..<MAX_SIZE {
            sum += arrayNum[indexCounter]
        }

        // Calculate average of array
        average = sum / Float(MAX_SIZE)

        // Print array
        print("\(arrayNum)")

        // Print rounded average
        print("Average: \(average) \n")

        // Clear array
        arrayNum.removeAll()

        // Increment line counter
        lineCounter += 1

    // Loop while 5 lines haven't been done
    } while (lineCounter < MAX_LINES)
}

// Call main
main()