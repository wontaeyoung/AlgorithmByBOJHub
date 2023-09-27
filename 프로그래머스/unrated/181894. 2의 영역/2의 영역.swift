import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let arrayContainsTwo = arr
    .enumerated()
    .filter { $0.element == 2 }
    
    guard 
        let start = arrayContainsTwo.first?.offset,
        let end = arrayContainsTwo.last?.offset 
    else {
        return [-1]
    }
    
    return arr[start...end]
    .map { $0 }
}