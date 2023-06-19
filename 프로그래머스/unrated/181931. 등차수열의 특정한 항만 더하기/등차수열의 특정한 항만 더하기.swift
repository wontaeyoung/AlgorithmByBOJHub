import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    return included.enumerated().map { (idx, isTrue) in
        isTrue ? d * idx + a : 0
    }.reduce(0, +)
}