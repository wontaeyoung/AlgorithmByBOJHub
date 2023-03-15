import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let n : Int? = String(num).map{Int(String($0))!}.firstIndex(of:k)
    return n != nil ? n! + 1 : -1
}