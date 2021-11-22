import Foundation

let array = [1,4,5,7,8,7,6,4,5,4,5,4,3,2,4,5,6,7]
let array2 = [[1, 4, 5, 7], [8, 7, 6, 4, 5], [4, 5, 4], [3, 2, 4, 5, 6, 7]]

let newArray1 = array.map {$0 + 1}
newArray1

let newArray2 = array.map { "\($0) €" }
newArray2

let arrayFlat = array2.flatMap { $0 }
arrayFlat

// Ahora, el primer $0, va a ser un Array de Int, no un Int
let arrayFlat1 = array2.flatMap {
    $0.map { $0 + 1}
}
arrayFlat1

// De forma más visual:
let arrayFlat2 = array2.flatMap { arrayInts in
    arrayInts.map { num in
        "\(num) €"
    }
}
arrayFlat2

