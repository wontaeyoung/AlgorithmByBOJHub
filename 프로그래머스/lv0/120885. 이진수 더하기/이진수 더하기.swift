func solution(_ bin1:String, _ bin2:String) -> String {
    
    let binX = bin1.reversed().map{Int(String($0))!} + Array(repeating: 0, count: 10 - bin1.count)
    let binY = bin2.reversed().map{Int(String($0))!} + Array(repeating: 0, count: 10 - bin2.count)
    var ceilList : [Int] = Array(repeating: 0, count: 11)
    
    for i in 0...9 {
       ceilList[i] = binX[i] + binY[i] + ceilList[i]
        if ceilList[i] > 1 { ceilList[i+1] = 1 }
    }
    
    return String(Int(ceilList.map{$0 % 2}.reversed().map{String($0)}.joined())!)
}