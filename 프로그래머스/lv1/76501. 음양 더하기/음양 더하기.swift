import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return Array(0..<signs.count)
    .map{signs[$0] ? absolutes[$0] : -absolutes[$0]}
    .reduce(0,+)
}