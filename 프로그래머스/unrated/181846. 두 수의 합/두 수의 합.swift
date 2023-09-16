import Foundation

func solution(_ a:String, _ b:String) -> String {
    let aList: [Int] = a.reversed().map { Int(String($0))! }
    let bList: [Int] = b.reversed().map { Int(String($0))! }
    
    var result: [Int] = []
    var carry = 0
    
    let maxLength = max(aList.count, bList.count)
    for i in 0..<maxLength {
        let sum = (i < aList.count ? aList[i] : 0) + (i < bList.count ? bList[i] : 0) + carry
        result.append(sum % 10)
        carry = sum / 10
    }
    
    if carry > 0 {
        result.append(carry)
    }
    
    return result.reversed().map(String.init).joined()
}