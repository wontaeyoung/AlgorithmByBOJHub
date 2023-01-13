import Foundation

func solution(_ n: Int) -> Int {
    if [1,2].contains(n) {
        return n
    }
    
    var jump : [Int] = [1,2] + [Int](repeating: 0, count: n-2)
    
    for i in 2..<n {
        jump[i] = (jump[i-2] + jump[i-1]) % 1234567
    }
    
    return jump.last! % 1234567
}

// 피보나치
/*
func solution(_ n: Int) -> Int {
    if n == 1 || n == 2 {
        return n
    }

    return (solution(n-1) + solution(n-2)) % 1234567
}
*/

/* 재귀로 실패
func solution(_ n: Int) -> Int {
    var result: Int = 0

    func jump(_ sum: Int, n: Int) {
        // 탈출
        if sum >= n {
            if sum == n{
                result += 1
            }
            return
        }

        // 재귀
        jump(sum+1, n: n)   // 1칸
        jump(sum+2, n: n)   // 2칸
    }
    
    jump(0, n: n)
    return result % 1234567
}
*/