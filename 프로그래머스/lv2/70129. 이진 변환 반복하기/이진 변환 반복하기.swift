import Foundation

func solution(_ s:String) -> [Int] {
    
    var binary: String = s
    var zeroCounter: Int = 0
    var whileCounter: Int = 0
    
    while binary != "1" {
        zeroCounter += binary.filter{$0 == "0"}.count
        binary = String(binary.filter{$0 == "1"}.count, radix: 2)
        whileCounter += 1
    }
    
    return [whileCounter, zeroCounter]
}