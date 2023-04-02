import Foundation

func solution(_ my_string:String) -> Int {
    let formula = my_string.components(separatedBy: " ").joined()
    var temp: String = ""
    var nums: [Int] = []
    
    formula.forEach {
        if !$0.isNumber {
            nums.append(Int(temp) ?? 0)
            temp = ""
        }
        temp += String($0)
    }
    nums.append(Int(temp) ?? 0)
    return nums.reduce(0,+)
}