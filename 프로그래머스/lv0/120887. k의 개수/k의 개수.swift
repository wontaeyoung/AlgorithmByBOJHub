import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    return Array(i...j).map{String($0)}.joined().filter{String($0) == String(k)}.count
}