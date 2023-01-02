import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return [num_list.filter{$0 % 2 == 0}.count, num_list.filter{$0 % 2 == 1}.count]
}