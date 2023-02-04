import Foundation

struct Pos {
    var x : Int
    var y : Int
    
    func getDistance(dest : Pos) -> Int {
        return abs(x - dest.x) + abs(y - dest.y)
    }
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    
    var answer : String = ""
    
    let posDict : [Int : Pos] = [
        1 : Pos(x: 0, y: 3), 2 : Pos(x: 1, y: 3), 3 : Pos(x: 2, y: 3),
        4 : Pos(x: 0, y: 2), 5 : Pos(x: 1, y: 2), 6 : Pos(x: 2, y: 2),
        7 : Pos(x: 0, y: 1), 8 : Pos(x: 1, y: 1), 9 : Pos(x: 2, y: 1),
        11 : Pos(x: 0, y: 0), 0 : Pos(x: 1, y: 0), 12 : Pos(x: 2, y: 0)
    ]
    
    var leftPos : Pos = posDict[11]!
    var rightPos : Pos = posDict[12]!
    
    for number in numbers {
        
        let touchHand : String
        let target : Pos = posDict[number]!
        
        switch target.x {
        case 0:
            touchHand = "L"
        case 2:
            touchHand = "R"
        default:
            let leftDistance = leftPos.getDistance(dest: target)
            let rightDistance = rightPos.getDistance(dest: target)
            
            if leftDistance < rightDistance {
                touchHand = "L"
            } else if leftDistance > rightDistance {
                touchHand = "R"
            } else {
                touchHand = hand == "right" ? "R" : "L"
            }
        }
        
        answer += touchHand
        leftPos = touchHand == "L" ? target : leftPos
        rightPos = touchHand == "R" ? target : rightPos
    }
    return answer
}