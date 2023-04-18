// filter에서 arr.min()을 계산하니까 오버헤드로 인해 시간 초과가 발생해서, min은 상수로 분리
func solution(_ arr:[Int]) -> [Int] {
    let min = arr.min()
    return arr.count == 1 ? [-1] : arr.filter{$0 != min}
}
