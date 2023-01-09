import Foundation

func solution(_ month:Int, _ day:Int) -> String {
    return ["THU","FRI","SAT","SUN","MON","TUE","WED"][(
        month == 1 ? day
        : (1...month-1).map{[1,3,5,7,8,10,12].contains($0) ? 31 : 30}.reduce(0,+) + (month > 2 ? day - 1 : day)
    ) % 7]
}