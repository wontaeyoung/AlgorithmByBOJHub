import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    let codeArray: [String] = code.map { String($0) }
    
    return code
    .map { $0 }
    .indices
    .filter { $0 % q == r }
    .map { codeArray[$0] }
    .joined()
}