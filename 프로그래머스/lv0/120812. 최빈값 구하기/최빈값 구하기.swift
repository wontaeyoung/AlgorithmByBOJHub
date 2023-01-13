import Foundation

func solution(_ array:[Int]) -> Int {
    
    var mostDict : [Int : Int] = [:]
    array.forEach { n in
        mostDict[n, default : 0] += 1
    }
    let sortedMostDict = mostDict.sorted {
        $0.value > $1.value
    }
    let maxMost = sortedMostDict.map{$0.value}.max()!
    
    return sortedMostDict.filter{$0.value == maxMost}.count > 1 
    ? -1 
    : sortedMostDict.first!.key
}