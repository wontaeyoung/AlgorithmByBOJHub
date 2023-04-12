func solution(_ strings:[String], _ n:Int) -> [String] 
{
    var ans = [String]()
    
    var dict : [String : String] = [:]
    
    for i in strings
    {
        dict[i, default : ""] = i.map{String($0)}[n]
    }
    
    let sorted = dict.sorted {
        if $0.1 == $1.1
        {
            return $0.0 < $1.0
        }
        return $0.1 < $1.1
    }
    
    for i in sorted
    {
        ans.append(i.key)
    }
    
    return ans
}