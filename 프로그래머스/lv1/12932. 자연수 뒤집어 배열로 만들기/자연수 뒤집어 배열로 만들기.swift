/* 
처음엔 sorted로 내림차순으로 정렬했는데, 테스트 케이스가 대부분 실패했음
로직을 잘못 짰는지 검토해도 의도한대로 잘 작동하는게 맞았는데, 혹시나 해서 내림차순이 아니라 그냥 순서를 역순으로 트라이 해봤는데 성공...
*/

func solution(_ n:Int64) -> [Int] {
    return String(n).map{String($0)}.reversed().map{Int($0)!}
}