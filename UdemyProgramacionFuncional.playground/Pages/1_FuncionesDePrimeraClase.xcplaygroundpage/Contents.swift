import UIKit

/*
 Función normal, que recibe dos parámetros de tipo Int y devuelve otro valor de tipo Int, su tipo sería: (Int, Int) -> Int
 */
func sumar(a:Int, b:Int) -> Int {
    a + b
}

let suma1 = sumar(a: 5, b: 7)


/*
 Asociamos a la constante suma la función sumar, con lo cual, suma, pasará a ser de tipo: (Int, Int) -> Int, al igual que la función
 */
let suma = sumar



func mostrar(cadena: String) {
    print(cadena)
}
/*
 Podemos asociar a la constante muestra la función mostrar, con lo que muestra sería de tipo: (String) -> ()
 */
let muestra = mostrar

// ¿Cómo podría invocar la función anónima contenida dentro de las variables?:

suma(5, 7)
muestra("Hola mundo!")


