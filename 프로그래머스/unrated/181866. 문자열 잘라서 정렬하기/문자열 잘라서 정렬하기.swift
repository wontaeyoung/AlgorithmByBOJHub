import Foundation

func solution(_ myString:String) -> [String] {
    return myString
    .components(separatedBy: "x")
    .filter{$0.isEmpty == false}
    .sorted()
}