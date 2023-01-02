import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return my_string.map{[String](repeating : String($0), count : n).reduce("",+)}.reduce("",+)
}