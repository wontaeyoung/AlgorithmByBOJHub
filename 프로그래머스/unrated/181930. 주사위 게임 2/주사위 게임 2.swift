import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    
    let sameNumberCounter: Int = [a,b,c].map{ num in
        [a,b,c].filter{$0 == num}.count
    }.max()!
    
    switch sameNumberCounter {
        case 1:
            return a + b + c
        
        case 2:
            return (a + b + c) * (a*a + b*b + c*c)
        
        default:
            return (a + b + c) * (a*a + b*b + c*c) * (a*a*a + b*b*b + c*c*c)
    }
}