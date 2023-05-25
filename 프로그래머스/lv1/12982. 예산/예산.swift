import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var money : Int = budget
    var counter : Int = 0
    
    d.sorted().forEach{
        if $0 <= money {
            money -= $0
            counter += 1
        } 
    }
    
    return counter
}