import Foundation

func solution(_ n:Int) -> Int {
    return n < 3 ? n : n == 3628800 ? 10
    : (3...10).map{ (1...$0).reduce(1,*) > n ? $0-1 : 0}.filter{$0 > 0}.first!
}