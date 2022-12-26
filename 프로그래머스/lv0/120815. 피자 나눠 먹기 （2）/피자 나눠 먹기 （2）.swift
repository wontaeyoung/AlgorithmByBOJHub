import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{($0 * 6) % n == 0}.first!
}