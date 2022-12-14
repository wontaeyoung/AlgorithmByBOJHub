import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var haveCola : Int = n // 보유중인 콜라
    var recivedCola : Int = 0 // 새로 받은 콜라
    
    while haveCola >= a {
        // 빈병으로 교환받은 콜라
        let newCola = (haveCola / a) * b
        // 교환받은 콜라를 새로 받은 콜라에 추가
        recivedCola += newCola
        // 보유중인 콜라에 교환하고 남은 콜라 + 새로받은 콜라 할당
        haveCola = (haveCola % a) + newCola
    }
    
    return recivedCola
    
}