import Foundation

func solution(_ numbers:[Int]) -> Int {
    return numbers.sorted(by: >)[0] * numbers.sorted(by: >)[1]
}