import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    return parts
    .enumerated()
    .map { (idx, list) in
        my_strings[idx].map{String($0)}[list[0]...list[1]].joined()
    }
    .joined()
}