import Foundation

func solution(_ s:String) -> Int {

 var answer = s

  let words = ["zero","one","two","three","four","five","six","seven","eight","nine"]

  for i in 0..<words.count {
    answer = answer.replacingOccurrences(of: words[i], with: String(i))
  }

  return Int(answer)!
}