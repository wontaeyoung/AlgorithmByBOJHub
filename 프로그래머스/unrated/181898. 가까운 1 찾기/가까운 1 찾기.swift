import Foundation

func solution(_ arr:[Int], _ idx:Int) -> Int {
    let index: Int? = arr
    .enumerated()
    .filter {
        $0.offset >= idx && $0.element == 1
    }
    .first?
    .offset
    
    return index ?? -1
}