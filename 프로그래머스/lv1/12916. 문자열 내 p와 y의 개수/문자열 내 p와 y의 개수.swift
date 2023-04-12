import Foundation

func solution(_ s:String) -> Bool {
    s.lowercased().filter{$0 == "p"}.count 
    == 
    s.lowercased().filter{$0 == "y"}.count 
    ? true 
    : false
}