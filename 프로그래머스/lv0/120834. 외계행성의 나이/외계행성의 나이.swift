import Foundation

func solution(_ age:Int) -> String {
    let a = ["a","b","c","d","e","f","g","h","i","j"]
    // "23".map
    let indexList = String(age).map{$0} // ["2","3"]

    let alphabetList = indexList.map{a[Int(String($0))!]}
    
    return alphabetList.reduce("",+)
}