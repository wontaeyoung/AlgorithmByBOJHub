import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    let result = picture.map { line in 
        [String](repeating: line.map { String(repeating: $0, count: k) }.joined(), count: k)
    }
    
    return result.flatMap { $0 }
}