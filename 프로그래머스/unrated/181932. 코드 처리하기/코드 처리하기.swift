import Foundation

func solution(_ code:String) -> String {
    let codeArray: [String] = code.map{String($0)}
    var mode: Bool = false
    var ret: String = ""
    
    for idx in 0...code.count - 1 {
        let currentChar = codeArray[idx]
        let currentCharAsString = String(currentChar)
        
        if currentChar == "1" {
            mode.toggle()
            continue
        }
        
        if mode {
            ret += idx % 2 == 1 ? currentCharAsString : "" 
        } else {
            ret += idx % 2 == 0 ? currentCharAsString : "" 
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}