import Foundation

func solution(_ num_list:[Int]) -> Int {
    return num_list.enumerated().filter{$1 < 0}.first?.offset ?? -1
}