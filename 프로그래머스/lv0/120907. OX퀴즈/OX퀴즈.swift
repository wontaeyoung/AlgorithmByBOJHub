import Foundation

func solution(_ quiz:[String]) -> [String] {
    quiz.map{
        let arr = $0.split(separator: " ")
        return Int(arr[0])! + (arr[1] == "-" ? -1 : 1) * Int(arr[2])! == Int(arr.last!)! ? "O" : "X"
    }
}