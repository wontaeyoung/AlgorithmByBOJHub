func solution(_ phone_number:String) -> String {
    return Array(repeating : "*", count : phone_number.count - 4).joined() 
    + phone_number[phone_number.index(phone_number.endIndex, offsetBy : -4)..<phone_number.endIndex]
}

// suffix 함수로 시작 n자리, 끝 n자리 등을 쉽게 반환받을 수 있음