import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var price : Int = 0
    var min : Int = k
    var counter : Int = 0
    
    // 사과를 가격 높은 순으로 정렬 후 반복문 실행
    score.sorted(by: >).forEach { s in
        
        // 사과 담은 개수 + 1
        counter += 1
        
        // 이번 상자의 최저가보다 이번 사과가 가격이 낮으면 최저가 교체
        if s < min {
            min = s
        }
        
        // 상자가 채워지면 현재 (최저가 x 개수)를 판매가에 더하고, 최저가와 카운터를 초기화
        if counter == m {
            price += (min * m)
            min = k
            counter = 0
        }
    }
    
    // 더해진 판매가를 반환
    return price
}