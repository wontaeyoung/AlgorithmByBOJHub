import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return num_list.last! > num_list[num_list.count - 2] 
    ? num_list + [num_list.last! - num_list[num_list.count - 2]] 
    : num_list + [num_list.last! * 2]
}