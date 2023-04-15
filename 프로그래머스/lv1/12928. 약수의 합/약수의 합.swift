/* 메모
    - 처음엔 'n / num의 결과가 소수점이 있으면'으로 체크하려고 했는데, 그걸 체크할 수 있는 방법을 찾지 못했음. (나눈 결과의 타입 추론, is-as, isInt? 등)
    - divisorList에 추가하고 결과를 합해서 반환했는데, 리턴 값이 약수의 합이기 때문에 변수 하나에 계속 더하는 방법까지 추가
    - 테스트케이스 16만 실패하길래 고민해보니까, n이 0이면 1...n을 실행할 수 없어서, n이 0이면 바로 리턴하도록 추가
*/

func solution(_ n:Int) -> Int {
    
    var divisorList : [Int] = []
    
    guard n > 0 else {
        return 0
    }
    
    for num in 1...n {
        if n % num == 0 {
            divisorList.append(num)
        }
    }
    
    return divisorList.reduce(0,+)
}