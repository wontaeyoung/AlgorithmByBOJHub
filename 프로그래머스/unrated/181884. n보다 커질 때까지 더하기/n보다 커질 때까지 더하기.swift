import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var answer: Int = 0
    
    for num in numbers {
        answer += num
        if answer > n {
            break
        }
    }
    
    return answer
}