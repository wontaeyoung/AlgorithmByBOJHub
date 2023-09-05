import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    let array: [String] = my_string.map{String($0)}
    
    return stride(from: c-1, to: my_string.count, by: m).map{array[$0]}.joined()
}