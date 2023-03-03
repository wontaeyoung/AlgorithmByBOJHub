import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    return str1.components(separatedBy: str2).count > 1 ? 1 : 2
}