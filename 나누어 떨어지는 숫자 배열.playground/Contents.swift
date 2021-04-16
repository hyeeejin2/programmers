import UIKit

let array: [Int] = [3,2,6]
let divisor: Int = 10

func solution(_  arr:[Int], _ divisor:Int) -> [Int] {
    var resultArr: [Int] = []
    
    for element in arr {
        // 나누어 떨어지면 값 추가
        if element % divisor == 0 {
            resultArr.append(element)
        }
    }
       
    if resultArr.count == 0 {
        resultArr.append(-1) // 나누어 떨어지는 원소가 없으면 -1 추가
    } else {
        resultArr.sort() // 오름차순
    }
    return resultArr
}

print(solution(array, divisor))
