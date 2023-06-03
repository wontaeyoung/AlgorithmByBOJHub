import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    
    var skillTree = skill_trees
    
    for index in 0..<skillTree.count {
        let someSkill = skillTree[index]
        
        let skillString = someSkill.filter { c in
            skill.contains(c)
        }.map{String($0)}.joined()
        
        skillTree[index] = skillString
    }
    
    var isPossibleArray : [Bool] = []
    
    let skill = skill.map{String($0)}
    
    for skills in skillTree {
        var index : Int = 0
        let skills = skills.map{String($0)}
        var isPossible : Bool = true
        
        while index < min(skill.count, skills.count) {
            if skill[index] != skills[index] {
                isPossible = false
                break
            }
            index += 1
        }
        isPossibleArray.append(isPossible)
    }
    
    return isPossibleArray.filter{$0 == true}.count
}