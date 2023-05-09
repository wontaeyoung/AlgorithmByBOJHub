import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    return String(my_string.prefix(s)) + overwrite_string + String(my_string.suffix(my_string.count - overwrite_string.count - s))
}