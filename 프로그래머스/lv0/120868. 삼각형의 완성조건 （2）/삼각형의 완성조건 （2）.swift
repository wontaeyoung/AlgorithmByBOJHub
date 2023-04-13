import Foundation

func solution(_ sides:[Int]) -> Int {
    let sidesMin: Int = sides.min() ?? 0
    let sidesMax: Int = sides.max() ?? 0
    
//     if 
    
//     if sidesMin == sidesMax {
//         return sidesMin - 1
//     } else {
//         return sidesMin + sidesMax < 5
//         ? 1
//         : ((sidesMax - sidesMin + 1)...(sidesMax)).count + ((sidesMax + 1)...(sidesMin + sidesMax - 1)).count
//     }    
    return ((sidesMax-sidesMin+1)...(sidesMax+sidesMin-1)).count
}
