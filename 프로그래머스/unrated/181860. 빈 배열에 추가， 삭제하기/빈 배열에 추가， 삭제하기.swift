import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var answer: [Int] = []
    
    arr.indices.forEach { index in
        let value: Int = arr[index]
        if flag[index] {  
            let array: [Int] = Array(repeating: value, count: value * 2)
            answer.append(contentsOf: array)
        } else {
            answer.removeLast(value)
        }
    }
    
    return answer
}