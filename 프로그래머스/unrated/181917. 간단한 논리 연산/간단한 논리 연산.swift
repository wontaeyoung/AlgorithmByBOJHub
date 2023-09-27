import Foundation

func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    let first: Bool = x1 || x2
    let second: Bool = x3 || x4
    let third: Bool = first && second
    
    return third
}