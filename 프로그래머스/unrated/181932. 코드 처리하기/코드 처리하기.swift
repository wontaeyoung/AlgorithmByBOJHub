import Foundation

func solution(_ code:String) -> String {
    let codeArray: [String] = code.map{String($0)}
    var mode: Bool = false
    var ret: String = ""
    
    for idx in 0...code.count - 1 {
        let currentChar = String(codeArray[idx])
        
        if currentChar == "1" {
            mode.toggle()
            continue
        }
        
        if mode {
            ret.write(idx % 2 == 1 ? currentChar : "")
        } else {
            ret.write(idx % 2 == 0 ? currentChar : "")
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}