import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr: [Int] = arr
    queries.forEach { query in
        arr.swapAt(query[0], query[1])
    }
    return arr
}