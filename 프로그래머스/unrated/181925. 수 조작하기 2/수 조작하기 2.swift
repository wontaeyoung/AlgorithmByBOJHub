import Foundation

func solution(_ numLog:[Int]) -> String {
    return numLog.enumerated().map { (i, value) in
        guard i > 0 else { return "" }
        
        switch value - numLog[i-1] {
            case 1: return "w"
            case -1: return "s"
            case 10: return "d"
            case -10: return "a"
            default: return ""
        }
    }.joined()
}