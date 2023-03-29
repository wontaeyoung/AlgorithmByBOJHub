import Foundation

func solution(_ numbers:String) -> Int64 {
    let numberStrList = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var numbers = numbers
    for i in 0...numberStrList.count - 1 {
        numbers = numbers.replacingOccurrences(of: numberStrList[i], with: String(i))
    }
    return Int64(numbers)!
}