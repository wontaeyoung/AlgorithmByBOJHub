// 22-09-28(27)
func solution(_ a:Int, _ b:Int) -> Int64 {
    var ans : Int = 0
    if a > b {
        for i in b...a {
            ans += i
        }
    } else {
        for i in a...b {
            ans += i
        }
    }
    return Int64(ans)
}