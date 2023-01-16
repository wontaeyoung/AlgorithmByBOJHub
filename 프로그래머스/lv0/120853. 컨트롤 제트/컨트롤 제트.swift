import Foundation

func solution(_ s:String) -> Int {
    var sArray = s.components(separatedBy: " ")
    
    for n in sArray {
        if n == "Z" {
            sArray.removeFirst()
        } else {
            break
        }
    }
    
    while sArray.firstIndex(of: "Z") != nil {
        let idx = sArray.firstIndex(of: "Z")!
        sArray.remove(at: idx)
        sArray.remove(at: sArray.index(before: idx))
    }
    
    return sArray.map{Int($0)!}.reduce(0,+)
}