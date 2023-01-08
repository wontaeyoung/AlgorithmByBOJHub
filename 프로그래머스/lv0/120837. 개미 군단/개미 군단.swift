import Foundation

func solution(_ hp:Int) -> Int {
    let captain : Int = hp / 5 
    let soldier : Int = (hp % 5) / 3
    let worker : Int = hp - (captain * 5) - (soldier * 3)
    return captain + soldier + worker
}