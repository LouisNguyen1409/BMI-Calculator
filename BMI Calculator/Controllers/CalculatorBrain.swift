//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Louis on 20/1/2024.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiVal: Float = weight / pow(height, 2)
        if (bmiVal < 18.5) {
            bmi = BMI(value: bmiVal, advide: "EAT SOME MORE SNACKS!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if (bmiVal < 24.9) {
            bmi = BMI(value: bmiVal, advide: "KEEP IT!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiVal, advide: "IT'S TIME TO DO SOME EXERCISES!", color: #colorLiteral(red: 0.8243798614, green: 0.122486122, blue: 0.1472908258, alpha: 1))
        }
        
    }
    
    func getBMIVal() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi!.advide
    }
    
    func getColor() -> UIColor {
        return bmi!.color
    }
}
