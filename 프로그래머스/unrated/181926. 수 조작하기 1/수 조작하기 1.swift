import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    var n: Int = n
    control.forEach { c in
        switch c {
            case "w": n += 1
            case "s": n -= 1
            case "d": n += 10
            default: n -= 10
        }
    }
    return n
}