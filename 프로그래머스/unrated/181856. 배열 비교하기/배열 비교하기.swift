import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    let aCount = arr1.count
    let bCount = arr2.count
    let aSum = arr1.reduce(0,+)
    let bSum = arr2.reduce(0,+)
    
    guard aCount == bCount else {
        return aCount > bCount ? 1 : -1
    }
    
    guard aSum == bSum else {
        return aSum > bSum ? 1 : -1
    }
    
    return 0
}