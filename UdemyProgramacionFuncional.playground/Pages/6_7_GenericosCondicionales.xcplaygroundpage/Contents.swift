import UIKit

var array = [1,3,5,6,7,6,5,6,5]
var arrayS = ["Ola", "k", "ase"]

func indice<T:Equatable>(valor:T, array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valor {
            return index
        }
    }
    return nil
}

indice(valor: 5, array: array)
indice(valor: "k", array: arrayS)
