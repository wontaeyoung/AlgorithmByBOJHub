import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var arr: [Int] = arr
    
    queries.forEach { query in
        let (s, e, k) = (query[0], query[1], query[2])
        
         (s...e).filter{$0 % k == 0}.forEach { idx in
            arr[idx] += 1
        }
    }
    
    return arr
}