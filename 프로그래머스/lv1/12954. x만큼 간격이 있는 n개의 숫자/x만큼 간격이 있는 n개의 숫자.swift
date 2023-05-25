func solution(_ x:Int, _ n:Int) -> [Int64] {    
    var ans: [Int64] = []
    if x == 0 {
        for _ in 0..<n {
            ans.append(Int64(0))
        }
    } else {
        for i in stride(from: x, to: x * n + x, by: x) {
        ans.append(Int64(i))
        }
    }
    return ans
}