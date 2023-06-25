import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    return queries.map { query in
        let start = query[0]
        let end = query[1]
        let filteredArr = arr[start...end].filter{$0 > query[2]}.sorted()
        return filteredArr.isEmpty ? -1 : filteredArr.first!
    }
}