import Foundation

let n = Int(readLine()!)!
let stars = Array(1...n).map{String(repeating : "*", count : $0)}.joined(separator : "\n")
print(stars)