import Foundation

let array = [1,4,5,7,8,7,6,4,5,4,5,4,3,2,4,5,6,7]

array.forEach { elem in
    print(elem)
}

// Utilidad del for in: enumerated
for num in array.enumerated() {
    print("El elemento: \(num.element) tiene el índice \(num.offset)")
}
