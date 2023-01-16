import Foundation

func solution(_ s:String) -> String {
    s.count % 2 == 0
    ? s.enumerated().filter{[s.count/2-1, s.count/2].contains($0.offset)}.map{String($0.element)}.joined()
    : s.enumerated().filter{$0.offset == s.count/2}.map{String($0.element)}.joined()
}