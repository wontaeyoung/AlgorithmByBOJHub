import Foundation

func solution(_ myString:String) -> String {
    return myString.map {
        $0.lowercased() == "a"
        ? $0.uppercased() 
        : $0.lowercased()
    }.joined()
}