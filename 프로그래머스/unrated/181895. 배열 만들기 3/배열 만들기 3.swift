import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {    
    return intervals.map {
        arr[$0[0]...$0[1]]
    }
    .flatMap{$0}
}