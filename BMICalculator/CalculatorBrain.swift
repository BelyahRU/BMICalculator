import Foundation
import UIKit
struct CalculatorBrain{
    var bmi: BMI?
    
    func getBMI() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f",bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    mutating func calculateBMI(weight: Float, height:Float){
        var bmiValue = weight / pow(height,2)
        var bmiAdvice: String
        var bmiColor: UIColor
        if bmiValue < 18.5{
            bmiAdvice = "Eat mor pies!"
            bmiColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            
        } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            bmiAdvice = "Fit as a fiddle"
            bmiColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            
        } else {
            bmiAdvice = "Eat less pies"
            bmiColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        bmi = BMI(value: bmiValue, color: bmiColor, advice: bmiAdvice)
    }
    func getAdvice()->String{
        return bmi?.advice ?? "Error"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
