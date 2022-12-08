import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int 
{
  var answer : Int = 0
  
  // 전체 학생을 리스트화 (0번부터 시작하도록)
    let total : [Int] = [Int](0...n-1)
  
  // 여분 체육복 없음 & 도난당함 학생 리스트
  let noClothes = Set<Int>(lost).subtracting(reserve).map{$0-1}.sorted()
  
  // 여분 체육복 있음 & 도난 당하지 않음 학생 리스트
  var twoClothes : [Int] = Set<Int>(reserve).subtracting(lost).map{$0-1}.sorted()
  
  // 체육복을 빌린 학생의 수
  var receivedCount = 0
    
  // 자신의 앞/뒷번호 학생을 저장할 리스트
    var frontBack : [Int : [Int]] = [:]
    
  // 각 학생의 앞/뒷번호를 key - value로 묶기
    for i in total
    {
      // i가 시작 번호면 i+1만 추가
      if i == total.first!
        {
            frontBack[i] = [100,total[i+1]]
        }
      // i가 마지막 번호면 i-1만 추가
      else if i == total.last!
        {
            frontBack[i] = [total[i-1],100]
        }
      // i의 앞/뒷번호를 dictionary value에 추가
        else
        {
            frontBack[i] = [total[i-1],total[i+1]]
        }
    }
  
  // 체육복 빌리기
  for i in noClothes
  {
    // 앞 번호가 여분 체육복이 있는 학생이면
    if twoClothes.contains(frontBack[i]![0])
    {
      // 체육복 빌림 + 1
      receivedCount += 1
      
      // 체육복을 빌려준 학생은 여분 체육복 보유 학생 리스트에서 제외
      twoClothes.remove(at: twoClothes.firstIndex(of: i-1)!)
    }
    // 뒷 번호가 여분 체육복이 있는 학생이면
    else if twoClothes.contains(frontBack[i]![1])
    {
      // 체육복 빌림 + 1
      receivedCount += 1
      
      // 체육복을 빌려준 학생은 여분 체육복 보유 학생 리스트에서 제외
      twoClothes.remove(at: twoClothes.firstIndex(of: i+1)!)
    }
  }
  
  // 수업 참여한 학생 수 : 전체 학생 수 - 체육복이 없는 학생 수 + 체육복 빌린 학생 수
  answer = total.count - noClothes.count + receivedCount
    
    
    return answer
}