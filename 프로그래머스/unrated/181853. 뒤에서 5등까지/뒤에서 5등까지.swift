import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return num_list.sorted().prefix(5).map{$0}
}