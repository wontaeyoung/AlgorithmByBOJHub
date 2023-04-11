func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var coordinate : (h : Int, v : Int) = (0,0)
    let wall : (left : Int, right : Int, up : Int, down : Int) = (
        board[0] == 1 ? -1 : -board[0] / 2 - 1,
        board[0] == 1 ? 1 : board[0] / 2 + 1,
        board[1] == 1 ? 1 : board[1] / 2 + 1,
        board[1] == 1 ? -1 : -board[1] / 2 - 1
    )
    
    for move in keyinput {
        switch move {
        case "left":
            coordinate.h -= 1
        case "right":
            coordinate.h += 1
        case "up":
            coordinate.v += 1
        default:
            coordinate.v -= 1
        }
        
        if coordinate.h <= wall.left {
            coordinate.h += 1
        } else if coordinate.h >= wall.right {
            coordinate.h -= 1
        } else if coordinate.v <= wall.down {
            coordinate.v += 1
        } else if coordinate.v >= wall.up {
            coordinate.v -= 1
        }
        
    }
    
    return [coordinate.h, coordinate.v]
}