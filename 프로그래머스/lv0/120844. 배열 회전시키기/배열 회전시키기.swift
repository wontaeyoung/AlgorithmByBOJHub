import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    return direction == "left"
    ? numbers.dropFirst() + [numbers.first!]
    : [numbers.last!] + numbers.dropLast()
}