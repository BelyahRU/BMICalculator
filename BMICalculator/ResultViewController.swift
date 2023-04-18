//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Александр Андреев on 18.04.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var BMI = "0.0"
    
    @IBOutlet weak var resultBMILabel: UILabel!
    @IBOutlet weak var resultInformationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultBMILabel.text = BMI
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
