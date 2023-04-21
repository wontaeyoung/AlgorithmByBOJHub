func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var ans = arr1
    for i in 0..<ans.count {
        for j in 0..<ans[0].count {
            ans[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return ans
}