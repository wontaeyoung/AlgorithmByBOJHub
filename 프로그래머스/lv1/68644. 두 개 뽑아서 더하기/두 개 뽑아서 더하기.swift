import Foundation

func solution(_ numbers:[Int]) -> [Int] {

    let visit : [Bool] = [Bool](repeating: false, count: numbers.count)
    var answer : [Int] = []
    
    func DFS(
        data : [Int],
        current : Int,
        target : Int,
        isVisit : [Bool],
        sum : Int,
        list : [Int]
    ) {
        guard current < target else {
            print(list, sum)
            answer.append(sum)
            return
        }
        
        for i in current..<data.count {
            
            if isVisit[i] == false {
                var newVisit = isVisit
                newVisit[i] = true
                
                DFS(
                    data: data,
                    current: current + 1,
                    target: target,
                    isVisit: newVisit,
                    sum: sum + data[i],
                    list: list + [data[i]]
                )
            }
        }
    }
    
    DFS(data: numbers, current: 0, target: 2, isVisit: visit, sum: 0, list: [])
    
    return Set<Int>(answer).sorted()
}