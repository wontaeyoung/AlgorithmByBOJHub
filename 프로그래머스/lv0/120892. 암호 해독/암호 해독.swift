import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return cipher.map{String($0)}.enumerated().filter{($0.offset + 1) % code == 0}.map{$0.element}.joined()
}