import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    let myString = my_string.map{String($0)}
    
    return index_list
    .map { myString[$0] }
    .joined()
}