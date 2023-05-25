import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
  var answer: [String] = []
  var binaryArray = (0...n-1).map{
      String(arr1[$0]|arr2[$0],
             radix: 2)
  }
  
  for i in 0...n-1 {
    while binaryArray[i].count < n {
      binaryArray[i] = "0" + binaryArray[i]
    }
    
    let strBox = binaryArray[i].reduce(""){
        $0 + ($1 == "0" ? " " : "#")
    }
    answer.append(strBox)
  }

    return answer
}