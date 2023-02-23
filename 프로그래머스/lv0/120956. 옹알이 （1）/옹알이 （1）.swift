import Foundation

func solution(_ babbling:[String]) -> Int {
    return babbling.filter{ word in
        var word = word
        ["woo", "ye", "ma", "aya"].forEach{word = word.replacingOccurrences(of: $0, with: "-")}
        return word.replacingOccurrences(of: "-", with: "").isEmpty
    }.count
}