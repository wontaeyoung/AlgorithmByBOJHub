import Foundation

func solution(_ s:String) -> String {
    
    // 문자 : 카운터 딕셔너리
    var characterDict : [Character : Int] = [:]
    
    for c in s {
        // 문자 키에 해당하는 카운터 + 1
        characterDict[c, default: 0] += 1
    }
    
    // 카운터가 1인 문자들만 정렬해서 문자열로 반환
    return characterDict
        .filter{$0.value == 1}
        .map{String($0.key)}
        .sorted()
        .joined()
}