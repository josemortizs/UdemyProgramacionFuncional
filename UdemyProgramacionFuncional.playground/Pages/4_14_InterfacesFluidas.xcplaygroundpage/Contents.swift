import UIKit

let array = [1,4,5,7,8,7,6,4,5,4,5,4,3,2,4,5,6,7]

let array1 = array.map { "\($0)" }
array1

let arrayA = array
    .filter { $0 <= 5 }
    .sorted { $0 < $1 }
    .map { "\($0)" }
arrayA
