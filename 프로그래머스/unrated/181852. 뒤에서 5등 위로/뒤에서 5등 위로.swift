import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return num_list
    .sorted(by: >)
    .prefix(num_list.count - 5)
    .reversed()
    .map { $0 }
}