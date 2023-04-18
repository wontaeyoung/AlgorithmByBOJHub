func solution(_ n:Int64) -> Int64 {
    return Int64(String(n)
                 .map{String($0)}
                 .sorted(by:>)
                 .joined())!
}