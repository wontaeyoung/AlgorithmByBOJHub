import Foundation

func solution(_ number:[Int]) -> Int {
    let visit = [Bool](repeating: false, count: number.count)
    var counter : Int = 0
    
    func search(data : [Int],
                currentIndex : Int,
                currentDepth : Int,
                targetDepth : Int,
                isVisit : [Bool],
                sum : Int
    ) {
        guard currentDepth < targetDepth else {
            if sum == 0 { counter += 1 }
            return
        }
        
        for i in currentIndex...data.count - 1 {
            
            if isVisit[i] == false {
                var newVisit = isVisit
                newVisit[i] = true
                search(data: data,
                       currentIndex: i,
                       currentDepth: currentDepth + 1,
                       targetDepth: targetDepth,
                       isVisit: newVisit,
                       sum: sum + data[i])
            }
        }
    }
    search(data: number, currentIndex: 0, currentDepth: 0, targetDepth: 3, isVisit: visit, sum: 0)
    return counter
}