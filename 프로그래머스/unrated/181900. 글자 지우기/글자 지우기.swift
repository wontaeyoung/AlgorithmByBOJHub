import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    return my_string
    .enumerated()
    .filter{indices.contains($0.offset) == false}
    .map{String($0.element)}
    .joined()
}