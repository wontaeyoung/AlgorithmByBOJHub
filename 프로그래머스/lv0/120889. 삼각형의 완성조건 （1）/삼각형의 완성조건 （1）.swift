import Foundation

func solution(_ sides:[Int]) -> Int {
    return sides.max()! < sides.reduce(0,+) - sides.max()! ? 1 : 2
}