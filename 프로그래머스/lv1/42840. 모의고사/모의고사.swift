func solution(_ answers:[Int]) -> [Int] {
    
    var correctCounter: [Int : Int] = [1:0, 2:0, 3:0]
    
    let A = [1,2,3,4,5], B = [2,1,2,3,2,4,2,5], C = [3,3,1,1,2,2,4,4,5,5]
    
    for i in 0...answers.count-1 {
        if answers[i] == A[i % A.count] { correctCounter[1, default : 0] += 1 }
        if answers[i] == B[i % B.count] { correctCounter[2, default : 0] += 1 }
        if answers[i] == C[i % C.count] { correctCounter[3, default : 0] += 1 }
    }
    
    let max = correctCounter.values.max()
    
    return correctCounter.filter{$0.value == max}.keys.sorted()
}