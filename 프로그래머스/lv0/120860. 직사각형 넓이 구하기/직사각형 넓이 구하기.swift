import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let xList = Set<Int>(dots.map{$0[0]})
    let yList = Set<Int>(dots.map{$0[1]})
    return (xList.max()! - xList.min()!) * (yList.max()! - yList.min()!) 
}