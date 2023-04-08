import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    numlist.sorted{
        if abs(n - $0) == abs(n - $1) { return $0 > $1 }
        return abs(n - $0) < abs(n - $1)
    }
}