import Foundation

func solution(_ s:String) -> Bool {
    return [4,6].contains(s.count) && !s.map{$0.isNumber}.contains(false)
}