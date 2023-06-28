import Foundation

func solution(_ arr:[Int]) -> [Int] {
    return arr.map { value in
        Array(repeating: value, count: value)
    }.flatMap{$0}
}