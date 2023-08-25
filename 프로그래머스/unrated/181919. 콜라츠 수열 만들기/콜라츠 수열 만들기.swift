import Foundation

func solution(_ n:Int) -> [Int] {
    var n: Int = n
    var list: [Int] = [n]
    
    while true {
        guard n > 1 else { break }
        
        n = n % 2 == 0
        ? n / 2
        : 3 * n + 1
        
        list.append(n)
    }
    
    return list
}