import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.map{String($0)}.filter{$0 != letter}.joined()
}