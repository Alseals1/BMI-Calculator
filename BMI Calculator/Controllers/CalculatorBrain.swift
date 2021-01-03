//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Alandis Seals on 12/16/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    
    
  mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
    
    if bmiValue < 18.5 {
        bmi = BMI(value: bmiValue, advice: "Eat More Calories 🍔", color: #colorLiteral(red: 0.5570265379, green: 0.889791537, blue: 1, alpha: 1))
    } else if bmiValue < 24.9 {
        bmi = BMI(value: bmiValue, advice: "You at average size 💪🏾", color: #colorLiteral(red: 0.630343616, green: 0.9927694201, blue: 0.00585399894, alpha: 1))
    } else if bmiValue > 24.9 {
        bmi = BMI(value: bmiValue, advice: "NO MORE PIES ‼️", color: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))    }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"    }
    
}
