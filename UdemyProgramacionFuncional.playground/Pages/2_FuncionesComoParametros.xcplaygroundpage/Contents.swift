import UIKit

let array = [4,6,3,5,7,8,7,5,6,4,5,6,7,6,5,4,3]

func sumar(a: Int, b: Int) -> Int {
    a + b
}

func restar(a: Int, b: Int) -> Int {
    a - b
}

// Implementamos una función que recibe un array de enteros y una función anónima que será donde se defina el comportamiento
// de la función calculo.
func calculo(numeros: [Int], algoritmo: (Int, Int) -> Int) -> Int? {
    guard var resultado = numeros.first else {
        return nil
    }
    for numero in numeros.dropFirst() {
        resultado = algoritmo(numero, resultado)
    }
    return resultado
}

calculo(numeros: array, algoritmo: sumar)
calculo(numeros: array, algoritmo: restar)


// O especificamos qué queremos que haga con los datos, directamente, mediante un closure
calculo(numeros: array) { num1, num2 in
    num1 + num2
} // Igual que la línea 23: calculo(numeros: array, algoritmo: sumar)

calculo(numeros: array) {
    $0 - $1
} // Igual que la línea 24: calculo(numeros: array, algoritmo: restar)
