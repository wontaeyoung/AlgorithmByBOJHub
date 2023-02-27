import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    return Array(repeating : 2, count : t).reduce(n,*)
}