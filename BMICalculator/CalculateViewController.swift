import UIKit

class CalculateViewController: UIViewController {

    var brain = CalculatorBrain()
    
    @IBOutlet weak var heightNumLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightNumLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightNumLabel.text = String(round(sender.value * 100) / 100)+"m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightNumLabel.text = String(Int(sender.value))+"kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        brain.calculateBMI(weight: weightSlider.value
                           , height: heightSlider.value)
        self.performSegue(withIdentifier: "idn2", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "idn2"{
            let destinationVs = segue.destination as! ResultViewController
            destinationVs.BMI = brain.BMIvalue
        }
    }
    
}

