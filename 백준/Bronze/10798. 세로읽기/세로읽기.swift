var list: [String] = []
var llist: [[String]] = []
var answer: String = ""

// 문자열 입력을 배열에 삽입하기
for _ in 1...5 {
    let input = readLine()!
    list.append(input)
}

// 각 문자열을 15 글자가 될 때까지 공백 삽입
for i in list.indices {
    list[i] += String(repeating: " ", count: 15 - list[i].count)
}

// 인덱스로 접근할 수 있도록 문자열을 배열로 변환
list.forEach {
    llist.append($0.map{String($0)})
}

// 세로 순서로 2차원 배열 접근해서 answer에 이어붙이기
for i in 0...14 {
    for j in llist.indices {
        answer += llist[j][i]
    }
}

// 공백 필터링하고 문자열로 변환하기
let trimmingAnswer = answer.filter{$0 != " "}.map{String($0)}.joined()

print(trimmingAnswer)
