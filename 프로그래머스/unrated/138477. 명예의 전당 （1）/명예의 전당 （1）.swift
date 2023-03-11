import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    return (0...score.count-1).map{
        let end = $0 < k-1 ? $0 : k-1
        return Array(score[0...$0].sorted(by: >)[0...end]).last!
    }
}