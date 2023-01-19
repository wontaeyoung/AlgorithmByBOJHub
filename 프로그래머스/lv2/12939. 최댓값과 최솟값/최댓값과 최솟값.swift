extension String {
    /// 문자열에서 지정한 범위에 해당하는 문자열을 반환
    /// start가 end보다 크면 에러 메세지 출력 후 공백 반환
    /// end를 0으로 입력하면 start부터 문자열 끝자리까지 반환
    func cut(from start : Int, to end : Int) -> String {
        let from = start < 1 ? 1 : start > self.count ? self.count : start // start가 1보다 작으면 1, 글자수보다 크면 글자수
        let to = end > self.count ? self.count : end < 0 ? 0 : end // end가 0보다 작으면 0, 글자수보다 크면 글자수
        guard to > 0 else {
            return String(self[self.index(self.startIndex, offsetBy: from-1)..<self.endIndex])
        }
        guard from - to <= 0 else {
            print("start-end range incorrect")
            return ""
        }
        return String(self[self.index(self.startIndex, offsetBy: from-1)..<self.index(self.startIndex, offsetBy: to)])
    }
}

func solution(_ s:String) -> String {
    let intList : [Int] = s
    .split(separator : " ")
    .map{($0.hasPrefix("-")
          ? (Int(String($0).cut(from: 2, to: 0))!) * -1
          : Int($0))!
    }
    return "\(intList.min()!) \(intList.max()!)"
}