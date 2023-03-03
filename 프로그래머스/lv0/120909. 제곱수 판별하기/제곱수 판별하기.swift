import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{$0 * $0 == n}.isEmpty ? 2 : 1
}