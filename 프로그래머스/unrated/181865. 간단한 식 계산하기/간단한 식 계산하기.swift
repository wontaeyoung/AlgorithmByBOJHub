import Foundation

func solution(_ binomial:String) -> Int {
    let split: [String] = binomial.components(separatedBy: " ")
    let a: Int = Int(split.first!)!
    let b: Int = Int(split.last!)!
    let op: String = split[1] 
    
    switch op {
        case "+":
        return a + b
        case "-":
        return a - b
        case "*":
        return a * b
        case "/":
        return a / b
        default:
        return 0
    }
}