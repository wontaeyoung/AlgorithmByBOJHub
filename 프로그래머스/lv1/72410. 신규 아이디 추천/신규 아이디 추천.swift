import Foundation

func solution(_ new_id:String) -> String {
    var id = new_id
    
    let possibleCharList : Set<String> = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","-","_","."]
    
    // 1. 대문자 -> 소문자 치환
    id = id.lowercased()
    
    // 2. char 단위 분리, 사용 불가능 글자 제거
    var splitedId = id.map{String($0)}.filter{possibleCharList.contains($0)}
    
    // 3. 연속된 마침표 찾아서 제거하기
    
    var dotIndexList : [Int] = []
    
    // splitedId의 마지막 인덱스가 아닐 때, index와 index+1이 모두 "."면 indexDotList에 index 추가
    for index in 0..<splitedId.count {
        if splitedId[index] == "." && index != splitedId.count-1 {
            if splitedId[index+1] == "." {
                dotIndexList.append(index)
            }
        }
    }
    
    // 마침표가 연속으로 있는 경우, 앞의 마침표를 지움
    // 배열 전체 길이가 1 줄었기 때문에, dotIndexList의 전체 값도 1 줄여서 맞춤
    for i in 0..<dotIndexList.count {
        splitedId.remove(at: dotIndexList[i])
        dotIndexList = dotIndexList.map{$0 - 1}
    }
    
    // 4. 처음과 끝에 마침표 확인해서 제거하기
    if let first = splitedId.first, first == "." {
        splitedId.removeFirst()
    }
    
    if let last = splitedId.last, last == "." {
        splitedId.removeLast()
    }
       
    // 5. 빈 문자열이면 a 대입하기
    if splitedId.isEmpty {
        splitedId = ["a"]
    }
    
    // 6. 16자 초과 제거, 마지막이 마침표면 제거
    if splitedId.count > 15 {
        splitedId.removeSubrange(15...)
        if splitedId.last == "." {
            splitedId.removeLast()
        }
    }
    
    // 7. 2자 이하 마지막 문자 반복
    while splitedId.count < 3 {
        splitedId.append(splitedId.last ?? "a")
    }
    
    // splitedId를 String으로 합쳐서 id로 반환
    return splitedId.reduce(""){$0 + $1}
}