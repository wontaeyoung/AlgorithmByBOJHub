import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map{String($0) == $0.uppercased() ? $0.lowercased() : $0.uppercased()}.joined()
}