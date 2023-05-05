import Foundation

let n = readLine()!.components(separatedBy: " ").map{Int($0)!}

if
    let a = n.first,
    let b = n.last {
        print("a = \(a)")
        print("b = \(b)")
    }