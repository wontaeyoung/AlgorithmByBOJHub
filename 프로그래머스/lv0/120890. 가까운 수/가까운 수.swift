import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    // array 각 원소와 n의 값 차이 배열
    let differenceArray : [Int] = array.map{abs($0 - n)}
    
    // 가장 가까운 차이값
    let closest = array
        .map{abs($0 - n)}
        .min()!

    // 차이 배열에서 최소 차이값에 해당하는 요소들의 index 리스트
    let closestIndexList : [Int] = differenceArray
        .enumerated()
        .filter{$0.element == closest}
        .map{$0.offset}

    // 원본 배열의 최소 차이값 요소들 중 가장 작은 값을 반환
    return closestIndexList.map{array[$0]}.min()!
}