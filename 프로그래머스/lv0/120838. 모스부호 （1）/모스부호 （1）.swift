import Foundation

let morse : [String : String] = [".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f","--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l","--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r","...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x","-.--":"y","--..":"z"]

func solution(_ letter:String) -> String {
    letter.components(separatedBy: " ").map{morse[$0]!}.reduce("",+)
}