import Foundation

func solution(_ num_list:[Int]) -> Int {
    let summedValue: Int = num_list.reduce(0, +)
    let multipliedValue: Int = num_list.reduce(1, *)
    
    return multipliedValue < summedValue * summedValue ? 1 : 0
}