//
//  CalculatorBrain.swift
//  Lake Pend Oreille
//
//  Created by Tim Pryor on 2015-12-17.
//  Copyright © 2015 Tim Pryor. All rights reserved.
//

import Foundation


class AppBrain {
    
    // singleton
    static let sharedInstance = AppBrain()
    
    // replace this with data from Navy
    var readingsArray: [Double] = [14, 14, 11, 11, 11, 11, 11, 3, 7, 7, 7, 7, 4, 8]
    
    
    func calculateMean() -> Double {
        
        var arraySum: Double = 0
    
        for elem in readingsArray {
            arraySum += elem
        }  // replace this
        
        let mean = arraySum / Double(self.readingsArray.count)
        
        return mean
    }
    
    
    func calculateMedian() -> Double {
        
        var sortedArray = [Double]()
        sortedArray = self.readingsArray.sort()
        var median: Double
        
        if (sortedArray.count % 2 == 0) {
            median = (sortedArray[sortedArray.count/2] + sortedArray[(sortedArray.count/2) - 1]) / 2
        } else {
            median = sortedArray[sortedArray.count/2]
        }
    
        return median
    }
    
}

