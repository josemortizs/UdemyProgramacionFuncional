import UIKit

var a = 1

func suma(b: Int) -> Int {
    a + b
}

/*
    La función suma, anterior, no sería una función pura, ya que su valor de retorno dependerá del valor de a,
    y el valor de dicha variable puede cambiar.
 
    Para que una función pueda ser considerada como pura debe devolver el mismo resultado, ante el paso de los mismos
    parámetros, en cualquier condición.
 
*/


extension String {
    mutating func addSuffix(suffix: String) { // Función que modificaría la propia cadena
        guard !hasSuffix(suffix) else {       // NO PURA, ya que tiene estado en función a si el
            return                            // el String es de tipo var o let
        }
        append(suffix)
    }
}

var fichero1 = "imagen1.jpg"
var fichero2 = "imagen2"

fichero1.addSuffix(suffix: ".jpg")
fichero2.addSuffix(suffix: ".jpg")

fichero1
fichero2


extension String {
    func addingSuffix(suffix: String) -> String { // Función que devolvería otra cadena con el sufijo
        guard !hasSuffix(suffix) else {           // FUNCIÓN PURA, sin estado, devuelve una cadena sin
            return self                           // modificar la original
        }
        return appending(suffix)
    }
}


var fichero3 = "imagen1.jpg"
var fichero4 = "imagen2"

fichero3.addingSuffix(suffix: ".jpg")
fichero4.addingSuffix(suffix: ".jpg").uppercased()

fichero3
fichero4

