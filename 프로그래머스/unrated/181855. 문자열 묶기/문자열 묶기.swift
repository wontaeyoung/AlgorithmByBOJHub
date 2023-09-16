import Foundation

func solution(_ strArr:[String]) -> Int {
    var dict: [Int: Int] = [:]
    
    strArr.forEach {
        dict[$0.count, default: 0] += 1
    }
    
    return dict.sorted {
        $0.value > $1.value
    }
    .first!
    .value
}