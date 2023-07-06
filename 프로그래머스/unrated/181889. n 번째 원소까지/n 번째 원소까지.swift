import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    return num_list[0..<n].map{$0}
}