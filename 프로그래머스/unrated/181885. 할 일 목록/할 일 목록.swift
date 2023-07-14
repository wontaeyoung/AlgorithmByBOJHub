import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    return (0..<todo_list.count)
    .filter{finished[$0] == false}
    .map{todo_list[$0]}
}