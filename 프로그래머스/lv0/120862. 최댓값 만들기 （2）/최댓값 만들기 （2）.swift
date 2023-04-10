import Foundation

func solution(_ numbers:[Int]) -> Int {
    let pre = numbers.sorted()[0...1].reduce(1,*)
    let suf = numbers.sorted().dropFirst(numbers.count-2).reduce(1,*)
    return [pre,suf].max()!
}