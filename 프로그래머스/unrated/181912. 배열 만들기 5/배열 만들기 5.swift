import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    return intStrs.map { intStr in
        return Int(intStr.map{String($0)}[s...s+l-1].joined())!               
    }
    .filter{$0 > k}
}