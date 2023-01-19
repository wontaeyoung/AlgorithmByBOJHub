import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).filter{ num in
        (1...num).filter{num % $0 == 0}.count > 2
    }.count
}