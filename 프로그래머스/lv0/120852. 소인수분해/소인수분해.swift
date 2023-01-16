import Foundation

func solution(_ n:Int) -> [Int] {
    var num : Int = n
    var divideNum : Int = 3
    var list : [Int] = []
    
    while num > 1 {
        if num % 2 == 0 {
            num /= 2
            list.append(2)
        } else {
            if num % divideNum == 0 {
                num /= divideNum
                list.append(divideNum)
            } else {
                divideNum += 2
            }
        }
    }
    
    return Set(list).sorted()
}