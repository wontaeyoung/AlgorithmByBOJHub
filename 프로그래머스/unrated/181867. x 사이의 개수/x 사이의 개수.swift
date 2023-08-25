import Foundation

func solution(_ myString:String) -> [Int] {
    return myString.components(separatedBy: "x").map{$0.count}
}