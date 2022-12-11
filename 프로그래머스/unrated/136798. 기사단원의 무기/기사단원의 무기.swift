import Foundation

// 각 기사들의 번호의 약수 구하기
// 공격력이 제한 수치를 넘는 기사는 규정 공격력으로 변경
// 다 더하기

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    
    var atkList : [Int] = []
    
    // 기사단원 순회
    for k in 1...number {
        
        var yaksu : Int = 0
        let sqrtDouble : Double = sqrt(Double(k))
        let sqrt : Int = Int(sqrtDouble)
        
        // 해당 기사단원의 약수 구하기
        for y in 1...sqrt {
            
            // 약수에 해당하면 약수 + 1
            if k % y == 0 {
                yaksu += 1
                
                if k / y != y {
                    yaksu += 1
                }
                // 약수가 리미트를 초과했으면 약수에 power를 할당하고 약수 구하기 for문 종료
                if yaksu > limit {
                yaksu = power
                break
             }
            }
        }
        
        // 기사단원 공격력 리스트에 약수 개수 추가
        atkList.append(yaksu)
    }
    
    var answer : Int = 0
    
    // 기사단원들 공격력 전부 더하기
    for i in atkList {
        answer += i
    }
    
    return answer
}