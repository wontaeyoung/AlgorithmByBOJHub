import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    let answer: ArraySlice<Int>
    let (a, b, c) = (slicer[0], slicer[1], slicer[2])
    
    switch n {
        case 1:
        answer = num_list[...b]
        
        case 2:
        answer = num_list[a...]
        
        case 3:
        answer = num_list[a...b]
        
        default:
        answer = ArraySlice(stride(from: a, to: b + 1, by: c).map { num_list[$0] })
    }
    
    return answer.map { $0 }
}