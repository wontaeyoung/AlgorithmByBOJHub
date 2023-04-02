import Foundation

func solution(_ my_string:String) -> Int {
    var numsAsString: [String] = []
    var tempNumberS: String = ""
    for s in my_string {
        if s.isNumber {
            tempNumberS += String(s)
            print(tempNumberS)
        } else if tempNumberS.isEmpty == false {
            numsAsString.append(tempNumberS)
            tempNumberS = ""
        }
    }
    if tempNumberS.isEmpty == false  { numsAsString.append(tempNumberS) }
    return numsAsString.map{Int($0) ?? 0}.reduce(0,+)
}