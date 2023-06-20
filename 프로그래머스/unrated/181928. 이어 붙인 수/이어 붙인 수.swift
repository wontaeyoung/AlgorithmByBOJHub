import Foundation

func solution(_ num_list:[Int]) -> Int {
    let combinedOddNum: Int = Int(num_list.filter{$0 % 2 == 1}.map{String($0)}.joined())!
    let combinedEvenNum: Int = Int(num_list.filter{$0 % 2 == 0}.map{String($0)}.joined())! 
    
    return combinedOddNum + combinedEvenNum
}