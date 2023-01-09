import Foundation

func solution(_ n:Int) -> Int {
    var next : Int = n + 1
    while true {
        if String(n, radix : 2).filter{$0 == "1"}.count == String(next, radix : 2).filter{$0 == "1"}.count {
            break
        }
        next += 1
    }
    return next
}