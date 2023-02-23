import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var element : String = ""
    var answer : [String] = []
    var counter : Int = 0
    for i in my_str {
        element += String(i)
        counter += 1
        if counter == n {
            answer.append(element)
            element = ""
            counter = 0
        } 
    }
    if !element.isEmpty {
        answer.append(element)
    }
    return answer
}