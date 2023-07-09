import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    return my_string.map {
        let char: String = String($0)
        let alp: String = String(alp)
        
        return char == alp
        ? alp.uppercased()
        : char
    }.joined()
}