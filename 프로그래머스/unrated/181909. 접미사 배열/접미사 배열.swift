import Foundation

func solution(_ my_string:String) -> [String] {
    return (1...my_string.count).map { n in
        String(my_string.suffix(n))
    }
    .sorted()
}