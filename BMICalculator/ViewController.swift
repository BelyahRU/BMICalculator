//
//  ViewController.swift
//  BMICalculator
//
//  Created by Александр Андреев on 16.04.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightNumLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightNumLabel: UILabel!
    //rounding to 2 decimal places
    @IBOutlet weak var weightSlider: UISlider!
    
    //print(String(format: "%.2f", sender.value))
    //print(round(currentValue*100) / 100)
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentValue = sender.value
        heightNumLabel.text = String(round(currentValue * 100) / 100)+"m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentValue = sender.value
        weightNumLabel.text = String(Int(currentValue))+"kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //BMI = weight / height^2
        var BMI = weightSlider.value / pow(heightSlider.value, 2)
        print(BMI)
        
        let secondVc  = SecondViewController()
        secondVc.bmiValue = String(format: "%.1f", BMI)
        
        self.present(secondVc, animated: true)
    }
    
}

