import Foundation

func solution(_ dot:[Int]) -> Int {
    return dot[0] > 0
    ? dot[1] > 0 ? 1 : 4
    : dot[1] > 0 ? 2 : 3
}