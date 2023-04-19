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
        var bmiAdvice = getAdvice(bmiValue)
        var bmiColor = getColor(bmiValue)
        bmi = BMI(value: bmiValue, color: bmiColor, advice: bmiAdvice)
    }
    private func getAdvice(_ value: Float)->String{
        if value < 18.5{
            return "Underweight"
        } else if value >= 18.5 && value <= 24.9 {
            return "Normal"
        } else {
            return "Overweight"
        }
    }
    private func getColor(_ value: Float) -> UIColor{
        if value < 18.5{
            return #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        } else if value >= 18.5 && value <= 24.9 {
            return #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else {
            return #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
    
}
