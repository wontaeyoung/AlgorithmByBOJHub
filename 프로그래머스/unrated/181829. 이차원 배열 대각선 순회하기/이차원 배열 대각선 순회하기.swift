import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    let maxI: Int = board.count - 1
    let maxJ: Int = board.first!.count - 1
    
    var indices: [(Int, Int)] = []
    
    for i in 0...maxI {
        for j in 0...maxJ {
            if i + j <= k {
                indices.append((i, j))
            }
        }
    }
    
    return indices
    .map { index in board[index.0][index.1]}
    .reduce(0, +)
}