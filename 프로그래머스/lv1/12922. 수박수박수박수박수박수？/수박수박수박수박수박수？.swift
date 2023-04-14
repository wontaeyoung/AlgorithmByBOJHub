func solution(_ n:Int) -> String {
    return Array(1...n) // [1,2,3...n]
    .map{$0 % 2 == 1 ? "수" : "박"} // [수,박,수...]
    .joined() // 수박수...
}