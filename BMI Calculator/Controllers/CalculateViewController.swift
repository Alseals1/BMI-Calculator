//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
   var calculatorBrain = CalculatorBrain()
    
    @IBOutlet var heightValue: UILabel!
    
    @IBOutlet var heightSliderBar: UISlider!
    
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var weightSliderBar: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2F", sender.value)
        heightValue.text = "\(height)m"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
         let weight = String(format: "%.0F", sender.value)
        weightValue.text = "\(weight)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSliderBar.value
        let weight = weightSliderBar.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
        
        
   }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
    
}

