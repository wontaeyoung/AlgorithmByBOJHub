import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var ans = my_string.map{String($0)}
    ans.swapAt(num1, num2)
    return ans.joined()
}