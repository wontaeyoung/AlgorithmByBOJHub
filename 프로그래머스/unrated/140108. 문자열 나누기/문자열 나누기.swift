import Foundation

func solution(_ s:String) -> Int {
    var splits : [String] = []
    var split : String = ""
    var first : String = ""
    var isFirst : Bool = true
    var counter : (x: Int, notX : Int) = (0,0)
    
    for c in s {
        let c = String(c)
        
        // 첫 글자면 first에 저장하고 isFirst를 false로 변경, continue
        if isFirst {
            first = c
            isFirst = false
            split += c
            counter.x += 1
            continue
        }
        
        // 들어온 글자를 문자열에 추가
        split += c
        
        // 들어온 글자가 x와 같은지 체크해서 x or notX +1
        if c == first {
            counter.x += 1
        } else {
            counter.notX += 1
        }
        
        // x와 notX 카운터가 같으면 문자열을 배열에 넣고 변수를 전부 초기화
        if counter.x == counter.notX {
            splits.append(split)
            split = ""
            first = ""
            isFirst = true
            counter = (0,0)
        }
    }
    
    // for문이 끝나고 split이 남아있으면 splits에 추가
    if split.isEmpty == false {
        splits.append(split)
    }
    
    // 분리한 문자열 개수 반환
    return splits.count
}