import Foundation

let s1 = readLine()!
let s2 = s1.map {$0.isUppercase ? String($0.lowercased()) : String($0.uppercased())}.joined()
print(s2)
