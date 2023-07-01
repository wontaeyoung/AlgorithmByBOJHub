import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return my_string
    .enumerated()
    .filter{$0.offset < n}
    .map{String($0.element)}
    .joined()
}