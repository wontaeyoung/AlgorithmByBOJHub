import Foundation

func solution(_ my_string:String) -> String {
    return my_string // bus
    .map{String($0)} // bus -> [b,u,s]
    .filter{"aeiou".contains($0) == false} // [aeiou].contains(b)? true or flase
    .reduce("",+)
}