import Foundation

func solution(_ chicken:Int) -> Int {
    var serviced : Int = 0
    var couponCounter : Int = chicken
    
    // 쿠폰으로 치킨을 더 시킬 수 없을 때까지
    while couponCounter >= 10 {
        // 쿠폰 10장 = 치킨 1마리로 치환
        let serviceChicken : Int = couponCounter / 10
        // 남은 쿠폰 + 서비스 치킨을 쿠폰에 할당
        couponCounter = (couponCounter % 10) + serviceChicken
        // 서비스 치킨 카운터에 서비스로 받은 치킨을 더함
        serviced += serviceChicken
    }
    
    return serviced
}