func solution(_ n:Int, _ m:Int) -> [Int] {
    let divisorN: [Int] = (1...n).filter{n % $0 == 0} // n의 약수
    let divisorM: [Int] = (1...m).filter{m % $0 == 0} // m의 약수
    let maxDivisor : Int = divisorN.filter{divisorM.contains($0)}.last! // n과 m의 최대 공약수
    let multipleN : [Int] = (n...n*m).filter{$0 % n == 0} // n의 배수 (n * m까지)
    let multipleM : [Int] = (m...n*m).filter{$0 % m == 0} // m의 배수 (n * m까지)
    let minMultiple : Int = multipleN.filter{multipleM.contains($0)}.first! // n과 m의 최소 공배수
    
    return [maxDivisor, minMultiple]
}