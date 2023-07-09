import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let isOdd: (Bool, Bool) = (a % 2 == 1, b % 2 == 1)
    
    switch isOdd {
        case (true, true): return a*a + b*b
        
        case (false, false): return abs(a-b)
        
        default: return 2 * (a+b)
    }
}
