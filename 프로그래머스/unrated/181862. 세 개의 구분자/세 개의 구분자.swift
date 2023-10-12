import Foundation

func solution(_ myStr:String) -> [String] {
    var str = myStr
    
    for c in "abc".map { $0 } {
        str = str.replacingOccurrences(of: String(c), with: "#")
    }
    
    let answer = str
        .components(separatedBy: "#")
        .filter { $0.isEmpty == false }
    
    return answer.isEmpty ? ["EMPTY"] : answer
}