import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    return numbers[2*(k-1) % numbers.count]
    // return Array(repeating: numbers, count : 100 / numbers.count + 1).reduce([],+)[2*(k-1)]
}
