import UIKit

var array: [Int] = [1, 5, 2, 6, 3, 7, 4]
let commands: [[Int]] = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []

    for command in commands {
        let i: Int = command[0] - 1
        let j: Int = command[1] - 1
        let k: Int = command[2] - 1

        let temp: [Int] = array[i...j].sorted() // 인덱스 i번째부터 j번째까지
        result.append(temp[temp.index(temp.startIndex, offsetBy: k)]) // k번째 인덱스 값 추가
    }
    return result
}
print(solution(array, commands))
