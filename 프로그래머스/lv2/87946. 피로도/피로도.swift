func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    
    var deepest : Int = 0 // 가장 높은 던전 탐색 횟수를 담을 변수
    let needList = dungeons.map{$0[0]} // 필요 피로도 리스트
    let consumeList = dungeons.map{$0[1]} // 소모 피로도 리스트
    let isVisitList : [Bool] = [Bool](repeating: false, count: dungeons.count) // 각 던전 번호의 방문 여부
    
    func DFS(remain : Int, depth : Int, isVisit : [Bool], playList : [Int]) {
        
        // 이번 던전 탐색이 가장 긴 탐색이었으면 변수 갱신
        if deepest < depth {
            deepest = depth
        }
        
        // 방문하지 않았고, 현재 피로도로 방문 가능한 던전이면 탐색
        for i in 0..<dungeons.count {
            if isVisit[i] == false && needList[i] <= remain {
                var newIsVisitList = isVisit
                newIsVisitList[i] = true
                // 현재 피로도에서 소모 피로도를 차감하고, 방문 횟수 +1, 방문 이력 리스트에 던전 번호 추가
                DFS(remain: remain - consumeList[i], depth: depth + 1, isVisit: newIsVisitList, playList: playList + [i])
            }
        }
    }
    
    DFS(remain: k, depth: 0,isVisit: isVisitList ,playList: [])
    
    return deepest
}