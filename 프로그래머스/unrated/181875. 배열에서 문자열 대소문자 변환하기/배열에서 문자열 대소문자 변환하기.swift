import Foundation

func solution(_ strArr:[String]) -> [String] {
    return strArr.enumerated().map { (idx, str) in
        idx % 2 == 0 ? str.lowercased() : str.uppercased()
    }
}