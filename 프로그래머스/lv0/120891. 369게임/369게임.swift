import Foundation

func solution(_ order:Int) -> Int {
    return String(order).filter{Int(String($0))! % 3 == 0 && $0 != "0"}.count
}