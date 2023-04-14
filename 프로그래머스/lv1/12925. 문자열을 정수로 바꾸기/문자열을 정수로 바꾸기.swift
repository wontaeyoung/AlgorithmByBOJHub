func solution(_ s:String) -> Int {
    return s.first! == "-" 
    ? -1 * Int(s[s.index(after : s.startIndex)..<s.endIndex])! 
    : s.first! == "+" 
        ? Int(s[s.index(after : s.startIndex)..<s.endIndex])! 
        : Int(s)!
}