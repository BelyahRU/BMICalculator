import Foundation
struct CalculatorBrain{
    var BMIvalue: String = "0.0"
    
    mutating func calculateBMI(weight: Float, height:Float){
        BMIvalue = String(format: "%.1f",weight / pow(height, 2))
    }
}
