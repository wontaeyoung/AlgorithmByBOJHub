// fees = [기본 시간, 기본 요금, 단위 시간, 단위 요금]
// records = [분:초 차량번호 입출차여부]

// 1. records 문자열 파싱 처리
// 2. 차량번호 : 총 이용시간 으로 데이터 정리
// 3. 반복문으로 수식처리해서 청구 요금 계산

// 차량번호에 대한 이용시간, 차량 번호에 대한 청구요금 -> [차량 : (누적시간,주차요금)] 딕셔너리로 저장
//["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT"]

import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    
    // 입/출차 기록을 받아서 (시간, 차량번호, 입출차여부) 튜플을 담은 배열로 변환
    let recordsTupleList : [(time : Int, carNum : String, isIn : Bool)] = records.map { record in
        let splitList = record.components(separatedBy : " ") // 입출차 기록 하나를 공백 기준으로 분리
        let minuteTime = splitList[0].components(separatedBy : ":") // 시:분를 [시,분]로 분리
        
        // (시*60+분, 차량번호, 입출차여부)로 반환
        return (time : Int(minuteTime.first!)! * 60 + Int(minuteTime.last!)!,
                carNum : splitList[1],
                isIn : "IN" == splitList[2]
        )
    }
   
    // 차량 번호 리스트 집합
    let carNumList = Set<String>(recordsTupleList.map{
        return $0.carNum
    })
    
    // [차량번호 : 억루피]
    var parkingAccuFeeDict : [String : Int] = [:]
    
    for car in carNumList {
        let basicTime : Int = fees[0] // 기본 시간
        let basicFee : Int = fees[1] // 기본 요금
        let unitTime : Int = fees[2] // 단위 시간
        let unitFee : Int = fees[3] // 단위 요금
        
        // 본인 차량번호에 해당하는 입출차 기록만 필터링
        var myRecords = recordsTupleList.filter{$0.carNum == car}
        
        // 마지막 출차 기록이 없으면, 23:59 출차 기록을 추가
        if myRecords.count % 2 == 1 {
            myRecords.append((23*60 + 59, car, false))
        }
        
        var total : Int = 0 // 총 누적시간
        var temp : Int = 0 // 입차 - 출차 한번까지의 시간
        
        // 누적시간 계산하기
        for i in 0...myRecords.count - 1 {
            if i % 2 == 0 {
                temp = myRecords[i].time
            } else {
                total += abs(myRecords[i].time - temp)
                temp = 0
            }
        }
        
        // 요금표에 따른 누적 주차요금 계산
        let accuFee = basicFee + ((total - basicTime < 0)
        ? 0
        : Int(ceil(Double(total - basicTime) / Double(unitTime))) * unitFee)
        
        // 본인 차량번호 key에 청구요금 value 추가
        parkingAccuFeeDict[car] = accuFee
    }
    
    // 차량번호 오름차순으로 dict에 접근해서 accuFee 리스트를 반환
    return carNumList.sorted().map{
        parkingAccuFeeDict[$0] ?? 0
    }
}