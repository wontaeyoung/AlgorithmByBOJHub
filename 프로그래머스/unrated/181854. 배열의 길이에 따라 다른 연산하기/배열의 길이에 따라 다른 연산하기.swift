import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    return arr.count % 2 == 1
    ? arr.enumerated().map { $0.offset % 2 == 1 ? $0.element : $0.element + n}
    : arr.enumerated().map { $0.offset % 2 == 0 ? $0.element : $0.element + n}
}