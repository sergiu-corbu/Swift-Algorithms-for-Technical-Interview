import UIKit
/* hackerrank.com/algorithms/
 input: 4:  73 67 38 33
 output: 75, 67, 40, 33
 */


func gradingStudents(grades: [Int]) -> [Int] {
    var list: [Int] = []
    for index in 0..<grades.count - 1{
        let currentGrade = grades[index]
        if currentGrade < 38 {
            list.append(currentGrade)
            continue
        }
        
        let leftOver = currentGrade % 5
        if leftOver > 2 {
            let newGrade = currentGrade + (5 - leftOver)
            list.append(newGrade)
            continue
        }
        
        list.append(currentGrade)
    }
    
    return list
    
}
