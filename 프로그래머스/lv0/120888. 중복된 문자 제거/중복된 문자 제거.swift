import Foundation

func solution(_ my_string:String) -> String {
    var ans : String = ""
    my_string.forEach{
        ans += ans.contains($0) ? "" : String($0)
    }
    return ans
}