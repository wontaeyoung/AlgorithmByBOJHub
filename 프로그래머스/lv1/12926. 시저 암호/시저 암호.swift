func solution(_ s:String, _ n:Int) -> String {
    return s.map{
        let unicode : Int = Int(UnicodeScalar(String($0))!.value)
        return $0 == " " 
        ? " " 
        : String(UnicodeScalar(
            unicode + n > 122 || (unicode < 91 && unicode + n > 90)
            ? unicode + n - 26 
            : unicode + n)!
                )
    }.joined()
}