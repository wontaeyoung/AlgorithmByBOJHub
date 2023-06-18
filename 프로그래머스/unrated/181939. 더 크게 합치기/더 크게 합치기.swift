import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let first: Int = Int(String(a)+String(b))!
    let second: Int = Int(String(b)+String(a))!
    return first > second ? first : second
}