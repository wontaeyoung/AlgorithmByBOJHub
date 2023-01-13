import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {

    let dayToday = getDayToday(today)
    
    var termsDict : [String : Int] = [:]
    
    terms.forEach {
        let split = $0.components(separatedBy: " ")
        termsDict[split.first!, default : 0] = Int(split.last!)! * 28
    }
    
    let privacyList : [Int] = privacies.map { privacy in
        let split : [String] = privacy.components(separatedBy: " ")
        let startDayToday : Int = getDayToday(split[0])
        let dayTerm : Int = termsDict[split[1]]!
        return startDayToday + dayTerm
    }
    print(dayToday)
    print(privacyList)
    
    return privacyList.enumerated().filter {
        $0.element <= dayToday
    }.map{$0.offset + 1}
}

func getDayToday(_ date : String) -> Int {
    let splitToday : [Int] = date.components(separatedBy: ".").map{Int($0)!}
    let dayToday : Int = (Int(String(splitToday[0]).suffix(2))! * 12 * 28)
    + (splitToday[1] * 28)
    + (splitToday[2])
    return dayToday
}