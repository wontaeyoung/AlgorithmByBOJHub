import Foundation
// 1. 평균값 내기 2. 배열로 만들기 3. 순위 정하기
func solution(_ score:[[Int]]) -> [Int] {
    
    var arr = [Int]()
    for n in score {
        var average = (n[0] + n[1])
        arr.append(average)
    }
    let arr2 = arr.sorted(by:>) // [75, 70, 65, 55] <- 등수O

    for i in 0..<arr.count {
        arr[i] = arr2.firstIndex(of : arr[i])! + 1
    }

    print(arr)
    return arr
}