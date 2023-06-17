import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let arr1 = str1.map{$0}
    let arr2 = str2.map{$0}
    return (0..<arr1.count).map { idx in
        String(arr1[idx]) + String(arr2[idx])
    }.joined()
}