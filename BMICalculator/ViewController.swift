//
//  ViewController.swift
//  BMICalculator
//
//  Created by Александр Андреев on 16.04.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightNumLabel: UILabel!
    @IBOutlet weak var weightNumLabel: UILabel!
    
    //rounding to 2 decimal places
    
    //print(String(format: "%.2f", sender.value))
    //print(round(currentValue*100) / 100)
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        var currentValue = sender.value
        heightNumLabel.text = String(round(currentValue * 100) / 100)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        var currentValue = sender.value
        weightNumLabel.text = String(Int(currentValue))
    }
    
}

