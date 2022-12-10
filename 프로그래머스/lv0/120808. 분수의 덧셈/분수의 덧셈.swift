import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    let x = denum1 * num2 + denum2 * num1
    let y = num1 * num2
    
    let xList = (1...x).filter{x % $0 == 0}
    let yList = (1...y).filter{y % $0 == 0}
    
    let maxNum = xList.filter{yList.contains($0)}.max()! ?? 1
    
    return [x / maxNum, y / maxNum]
}