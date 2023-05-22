import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    let line: Int = board.count
    
    var boardArr = board
    
    var expCount: Int = 0
    
    var basket: [Int] = []
    
    for i in moves {
        
        let pickUp: Int = i-1
        
        var removeIndex : Int = 0
        
        for j in 0...line-1 {
            if boardArr[j][pickUp] == 0 {
                continue
            }
            basket.append(boardArr[j][pickUp])
            boardArr[j][pickUp] = 0
            break
        }

      if basket.count > 1 {
        for a in 1...basket.count-1 {
            if basket[a] != basket[a-1] {
                continue
            }
            removeIndex = a
        }
      }
        if removeIndex > 0 {
            for i in 0...1 {
              basket.remove(at: removeIndex-1)
            }
            expCount += 2
        }
    }
    return expCount
}