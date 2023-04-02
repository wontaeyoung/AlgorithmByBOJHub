import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    if a % b == 0 { return 1 }
    
    let divisorA: [Int] = (1...a).filter{a % $0 == 0}
    let divisorB: [Int] = (1...b).filter{b % $0 == 0}
    let maxDivisor: Int = divisorA.filter{divisorB.contains($0)}.last ?? 1
    let irreducibleDenominator: Int = b / maxDivisor
    
    var factorizationTarget: Int = irreducibleDenominator
    var factorizationNumber: Int = 2
    var primeFactors: [Int] = []
    
    while true {
        if factorizationTarget <= 1 { break }
        
        if factorizationTarget % factorizationNumber == 0 {
            factorizationTarget /= factorizationNumber
            primeFactors.append(factorizationNumber)
        } else {
            factorizationNumber += 1
        }
    }
    
    return primeFactors.filter{![2,5].contains($0)}.isEmpty ? 1 : 2
}