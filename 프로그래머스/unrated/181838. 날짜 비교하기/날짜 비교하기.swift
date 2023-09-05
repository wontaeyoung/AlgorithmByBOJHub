import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    for index in date1.indices {
        let a = date1[index]
        let b = date2[index]

        if a > b { return 0 }
        if a < b { return 1 }
    }
    
    return 0
}