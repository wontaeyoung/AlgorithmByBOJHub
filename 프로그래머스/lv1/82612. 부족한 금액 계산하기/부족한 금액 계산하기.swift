import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let lackMoney = (1...count).map{$0 * price}.reduce(0,+) - money
    return lackMoney < 0 ? 0 : Int64(lackMoney)
}