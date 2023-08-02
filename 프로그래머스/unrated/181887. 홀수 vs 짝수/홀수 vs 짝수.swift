import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odds: [Int] = []
    var evens: [Int] = []
    
    num_list.enumerated().forEach { (index, value) in
        if (index + 1) % 2 == 1 {
            odds.append(value)
        } else {
            evens.append(value)
        }
    }
    
    let sumOdd: Int = odds.reduce(0,+)
    let sumEven: Int = evens.reduce(0,+)
    
    return sumOdd > sumEven
    ? sumOdd
    : sumEven
}