func solution(_ num:Int) -> Int {
    var counter : Int = 0
    var number : Int = num
    
    while number != 1 {
        number = number % 2 == 0 ? number / 2 : number * 3 + 1
        counter += 1
    }
    
    return counter >= 500 ? -1 : counter
}