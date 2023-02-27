import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {

    // today를 일로 변환
    let dayToday = getDayToday(today)
    
    // 개인정보 유효 기간을 [A : 일]로 딕셔너리에 담음
    var termsDict : [String : Int] = [:]
    terms.forEach {
        let split = $0.components(separatedBy: " ")
        termsDict[split.first!, default : 0] = Int(split.last!)! * 28
    }
    
    // 개인정보 동의 시작일 + 유효기간을 일로 변환해서 배열에 담음
    let privacyList : [Int] = privacies.map { privacy in
        let split : [String] = privacy.components(separatedBy: " ")
        let startDayToday : Int = getDayToday(split[0])
        let dayTerm : Int = termsDict[split[1]]!
        return startDayToday + dayTerm
    }
    
    // 시작일 + 유효기간이 오늘 날짜보다 이전인 애들의 인덱스 번호 + 1 반환
    return privacyList.enumerated().filter {
        $0.element <= dayToday
    }.map{$0.offset + 1}
}

// 2022.05.19 -> 일로 변환하는 함수
func getDayToday(_ date : String) -> Int {
    let splitToday : [Int] = date.components(separatedBy: ".").map{Int($0)!}
    let dayToday : Int = (Int(String(splitToday[0]).suffix(2))! * 12 * 28)
    + (splitToday[1] * 28)
    + (splitToday[2])
    return dayToday
}