//
//  ViewController.swift
//  BMICalculator
//
//  Created by Александр Андреев on 16.04.2023.
//

import UIKit

class CalculateViewController: UIViewController {

    var BMIvalue: Float = 0.0
    
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
        BMIvalue = weightSlider.value / pow(heightSlider.value, 2)
        self.performSegue(withIdentifier: "idn2", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "idn2"{
            let destinationVs = segue.destination as! ResultViewController
            destinationVs.BMI = String(format: "%.1f", BMIvalue)
        }
    }
    
}

