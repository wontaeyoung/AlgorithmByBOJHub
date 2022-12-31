import Foundation

func solution(_ price:Int) -> Int {
    return price >= 500000 ? Int(Double(price) * 0.8)
    : price >= 300000 ? Int(Double(price) * 0.9)
    : price >= 100000 ? Int(Double(price) * 0.95)
    : price
}