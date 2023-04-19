//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Александр Андреев on 18.04.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var BMI: String?
    var color: UIColor?
    var advice: String?
    
    @IBOutlet weak var resultBMILabel: UILabel!
    @IBOutlet weak var resultInformationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultBMILabel.text = BMI
        resultInformationLabel.text = advice
        resultBMILabel.textColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
